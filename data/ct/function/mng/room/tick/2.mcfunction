# 获取元素
data remove storage ct:mng.room.tick tmp.curr_item
$data modify storage ct:mng.room.tick tmp.curr_item set from storage ct:mng.room tl[$(index)]

# 元素不存在则return
execute \
    unless data storage ct:mng.room.tick tmp.curr_item \
    run return 0

# 执行用户自定义的命令
function ct:code/pt/meth/run_command with storage ct:mng.room.tick tmp.curr_item

# index++
execute \
    store result storage ct:mng.room.tick tmp.index int 1 \
    run scoreboard players add index ct.t-mng.room.tick 1

# 递归（循环）
function ct:mng/room/tick/2