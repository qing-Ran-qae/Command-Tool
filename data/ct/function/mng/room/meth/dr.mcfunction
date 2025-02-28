#> ct:mng/room/meth/
#
# @user
# @public
# @api

# 变量
scoreboard objectives add ct.t-mng.room.dr dummy
$data modify storage \
    ct:mng.room.dr tmp.rd \
    set from storage ct:mng.room rd-t.$(id)

# 如果房间正在游戏则不执行函数
execute \
    if data storage ct:mng.room.dr tmp.rd.status{playing:true} \
    run return run function ct:mng/room/meth/dr/1

# 让所有在此房间中的玩家离开房间
execute \
    store result storage ct:mng.room.dr tmp.index int 1 \
    run scoreboard players set index ct.t-mng.room.dr 0
data modify storage \
    ct:mng.room.dr tmp.room_id \
    set from storage ct:mng.room.dr tmp.rd.id
function ct:mng/room/meth/dr/2 \
    with storage ct:mng.room.dr tmp

# 删除房间数据
$data remove storage \
    ct:mng.room rd-t.'$(id)'
$data remove storage \
    ct:mng.room rd-l[{id:'$(id)'}]

# 删除房间tick命令
$data remove storage \
    ct:mng.room tl[{id:'$(id)'}]

# 变量
scoreboard objectives remove ct.t-mng.room.dr
data remove storage \
    ct:mng.room.dr tmp