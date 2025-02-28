#> ct:mng/room/meth/plar/3
#
# @within ct:mng/room/meth/plar

# 获取元素
data remove storage \
    ct:mng.room.plar tmp.curr_item
$data modify storage \
    ct:mng.room.plar tmp.curr_item \
    set from storage ct:mng.room.plar tmp.pd.ir-l[$(index)]

# 如果元素不存在则结束循环
execute \
    unless data storage ct:mng.room.plar tmp.curr_item \
    run return 0

# 操作
data modify storage \
    ct:mng.room.plar tmp.curr_item.player_id \
    set from storage ct:mng.room.plar tmp.player_id
function ct:mng/room/meth/plar/4 \
    with storage ct:mng.room.plar tmp.curr_item

# index++
execute \
    store result storage ct:mng.room.plar tmp.index int 1 \
    run scoreboard players add index ct.t-mng.room.plar 1

# 递归（循环）
function ct:mng/room/meth/plar/3 \
    with storage ct:mng.room.plar tmp