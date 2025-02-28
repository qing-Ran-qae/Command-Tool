#> ct:mng/room/meth/plar
#
# @user
# @public
# @api

# 变量
scoreboard objectives add ct.t-mng.room.plar dummy
execute \
    store result storage ct:mng.room.plar tmp.player_id int 1 \
    run scoreboard players get @s bs.cid
function ct:mng/room/meth/plar/1 \
    with storage ct:mng.room.plar tmp

# 如果玩家未加入任何房间则不执行函数
execute \
    unless data storage ct:mng.room.plar tmp.pd.ir-l[-1] \
    run return run function ct:mng/room/meth/plar/5

# 将玩家从房间的玩家列表中删除
execute \
    store result storage ct:mng.room.plar tmp.index int 1 \
    run scoreboard players set index ct.t-mng.room.plar 0
function ct:mng/room/meth/plar/3 \
    with storage ct:mng.room.plar tmp

# 清空玩家数据中的“所在房间”信息
data modify storage \
    ct:mng.room.plar tmp.pd.ir-t \
    set value {}
data modify storage \
    ct:mng.room.plar tmp.pd.ir-l \
    set value []

# 返回玩家数据
function ct:mng/room/meth/plar/2 \
    with storage ct:mng.room.plar tmp

# 变量
scoreboard objectives remove ct.t-mng.room.plar
data remove storage \
    ct:mng.room.plar tmp