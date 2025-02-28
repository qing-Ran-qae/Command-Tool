#> ct:mng/room/meth/grl/1
#
# @within ct:mng/room/meth/grl

# 获取元素
data remove storage ct:mng.room.grl tmp.item
$data modify storage ct:mng.room.grl tmp.item set from storage ct:mng.room rd-l[$(index)].id
function ct:mng/room/meth/grl/2 with storage ct:mng.room.grl tmp

# 不存在元素则结束循环
execute \
    unless data storage ct:mng.room.grl tmp.item \
    run return 0

# 向result中添加元素
data modify storage ct:mng.room.grl tmp.a.id \
    set from storage ct:mng.room.grl tmp.item.id
data modify storage ct:mng.room.grl tmp.a.playing \
    set from storage ct:mng.room.grl tmp.item.status.playing
data modify storage ct:mng.room.grl tmp.result \
    append from storage ct:mng.room.grl tmp.a

# index++
execute \
    store result storage ct:mng.room.grl tmp.index int 1 \
    run scoreboard players add index ct.t-mng.room.grl 1

# 检查是否继续递归
function ct:mng/room/meth/grl/1 with storage ct:mng.room.grl tmp