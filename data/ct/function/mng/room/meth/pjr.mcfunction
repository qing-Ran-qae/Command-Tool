#> ct:mng/room/meth/pjr
#
# @user
# @public
# @api

# 变量
scoreboard objectives add ct.t-mng.room.pjr dummy
$data modify storage \
    ct:mng.room.pjr tmp.rd \
    set from storage ct:mng.room rd-t.'$(id)'
scoreboard players set 1 ct.t-mng.room.pjr 1
data modify storage \
    ct:mng.room.pjr tmp.id \
    set from storage ct:mng.room.pjr tmp.rd.id
execute \
    store result score max_player ct.t-mng.room.pjr \
    run data get storage ct:mng.room.pjr tmp.rd.max_player
execute \
    store result score player_count ct.t-mng.room.pjr \
    run data get storage ct:mng.room.pjr tmp.rd.status.player_count 1
function ct:code/pt/meth/get_name
data modify storage \
    ct:mng.room.pjr tmp.player_name \
    set from storage ct:data o.player_name
execute \
    store result storage ct:mng.room.pjr tmp.player_id int 1 \
    run scoreboard players get @s bs.cid

# 如果玩家已在目标房间中则不执行函数
function ct:mng/room/meth/pjr/1 \
    with storage ct:mng.room.pjr tmp
execute \
    if data storage ct:mng.room.pjr tmp.air \
    run return run function ct:mng/room/meth/pjr/4

# 如果目标房间玩家已满则不执行函数
execute \
    if score max_player ct.t-mng.room.pjr = player_count ct.t-mng.room.pjr \
    run return run function ct:mng/room/meth/pjr/5

# 将目标房间添加至玩家的“所在房间”列表
data modify storage \
    ct:mng.room.pjr tmp.room_id \
    set from storage ct:mng.room.pjr tmp.rd.id
function ct:mng/room/meth/pjr/2 \
    with storage ct:mng.room.pjr tmp

# 将玩家添加至目标房间的玩家列表
#获取新元素的信息
data modify storage \
    ct:mng.room.pjr tmp.player_int4_uuid \
    set from entity @s UUID
data modify storage \
    large_number:math uuid_list_for_hyphen.input \
    set from storage ct:mng.room.pjr tmp.player_int4_uuid
function large_number:uuid_list_for_hyphen/start
data modify storage \
    ct:mng.room.pjr tmp.player_hex_uuid \
    set from storage large_number:math uuid_list_for_hyphen.output
data modify storage \
    ct:mng.room.pjr tmp.npe.name \
    set from storage ct:mng.room.pjr tmp.player_name
data modify storage \
    ct:mng.room.pjr tmp.npe.hex_uuid \
    set from storage ct:mng.room.pjr tmp.player_hex_uuid
data modify storage \
    ct:mng.room.pjr tmp.npe.int4_uuid \
    set from storage ct:mng.room.pjr tmp.player_int4_uuid
data modify storage \
    ct:mng.room.pjr tmp.npe.id \
    set from storage ct:mng.room.pjr tmp.player_id
#添加table格式
function ct:mng/room/meth/pjr/3 \
    with storage ct:mng.room.pjr tmp
#添加list格式
data modify storage \
    ct:mng.room.pjr tmp.rd.status.player_list \
    append from storage ct:mng.room.pjr tmp.npe

# 玩家数量+1
scoreboard players \
    operation player_count ct.t-mng.room.pjr += 1 ct.t-mng.room.pjr
execute \
    store result storage ct:mng.room.pjr tmp.rd.status.player_count int 1 \
    run scoreboard players get player_count ct.t-mng.room.pjr

# 存回房间数据
$data modify storage \
    ct:mng.room rd-t.$(id) \
    set from storage ct:mng.room.pjr tmp.rd

# 变量
scoreboard objectives remove ct.t-mng.room.pjr
data remove storage ct:mng.room.pjr tmp