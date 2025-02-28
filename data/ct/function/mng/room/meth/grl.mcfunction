#> ct:mng/room/meth/
#
# @user
# @public
# @api

# 变量
scoreboard objectives add ct.t-mng.room.grl dummy
execute \
    store result storage ct:mng.room.grl tmp.index int 1 \
    run scoreboard players set index ct.t-mng.room.grl 0
data modify storage \
    ct:mng.room.grl tmp.result \
    set value []

# 获取所有房间信息
function ct:mng/room/meth/grl/1 \
    with storage ct:mng.room.grl tmp

# 返回结果
data modify storage \
    ct:data o.room_list \
    set from storage ct:mng.room.grl tmp.result

# 变量
scoreboard objectives remove ct.t-mng.room.grl
data remove storage ct:mng.room.grl tmp