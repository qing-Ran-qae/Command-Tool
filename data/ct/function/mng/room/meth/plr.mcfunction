#> ct:mng/room/meth/
#
# @user
# @public
# @api

# 变量
$data modify storage \
    ct:mng.room.plr tmp.rd \
    set from storage ct:mng.room rd-t.$(id)
data modify storage \
    ct:mng.room.plr tmp.id \
    set from storage ct:mng.room.plr tmp.rd.id
execute \
    store result storage ct:mng.room.plr tmp.player_id int 1 \
    run scoreboard players get @s bs.cid

# 如果玩家不在目标房间中则不执行函数
function ct:mng/room/meth/plr/1 with storage ct:mng.room.plr tmp
execute \
    if data storage ct:mng.room.plr tmp.anir \
    run return run function ct:mng/room/meth/plr/4

# 将房间从“玩家所在房间”列表中删除
function ct:mng/room/meth/plr/2 with storage ct:mng.room.plr tmp

# 将玩家从房间的玩家列表中删除
function ct:mng/room/meth/plr/3 with storage ct:mng.room.plr tmp

# 存回房间数据
$data modify storage ct:mng.room rd-t.$(id) set from storage ct:mng.room.plr tmp.rd

# 返回值
data modify storage \
    ct:data o.not_has \
    set value false

# 变量
data remove storage \
    ct:mng.room.plr tmp