#> ct:mng/room/meth/dr/2
#
# @within ct:mng/room/meth/dr

# 获取元素
data remove storage \
    ct:mng.room.dr tmp.curr_item
$data modify storage \
    ct:mng.room.dr tmp.curr_item \
    set from storage ct:mng.room.dr tmp.rd.status.player_list[$(index)]

# 如果元素不存在则结束循环
execute \
    unless data storage ct:mng.room.dr tmp.curr_item \
    run return 0

# 让当前遍历到的玩家离开房间
data modify storage \
    ct:mng.room.dr tmp.player_id \
    set from storage ct:mng.room.dr tmp.curr_item.id
function ct:mng/room/meth/dr/3 \
    with storage ct:mng.room.dr tmp

# index++
execute \
    store result storage ct:mng.room.dr tmp.index int 1 \
    run scoreboard players add index ct.t-mng.room.dr 1

# 递归（循环）
function ct:mng/room/meth/dr/2 \
    with storage ct:mng.room.dr tmp