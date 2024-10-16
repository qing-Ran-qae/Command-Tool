#> ct:code/loop/meth/loop
#
# @within ct:code/dv/meth/trvl_list

# 跳出循环
$execute \
    unless data storage ct:temp trvl_list.target[$(index)] \
    run return 1

# 复制元素信息
$data modify storage ct:temp trvl_list.currli set from storage ct:temp trvl_list.target[$(index)]

# 执行run
$$(run)

# index++
execute \
    store result storage ct:temp trvl_list.index int 1 \
    run scoreboard players add index ct.temp.trvl_list 1

# 循环执行以遍历
function ct:code/loop/meth/trvl_list/body with storage ct:temp trvl_list