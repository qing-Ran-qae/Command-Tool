#> ct:code/loop/meth/for_in_list/2
#
# @within ct:code/loop/meth/for_in_list

# 转存当前元素
$execute \
    store success storage ct:code.loop.for_in_list tmp.has_item int 1 \
    run data modify storage ct:code.loop.for_in_list tmp.curr_item_staging set from storage ct:code.loop.for_in_list tmp.in_list[$(index)]
data modify storage ct:code.loop.for_in_list tmp.curr_item set from storage ct:code.loop.for_in_list tmp.curr_item_staging

# 如果不存在当前元素就是遍历完了
execute \
    if data storage ct:code.loop.for_in_list tmp{has_item:0} \
    run return 0

# run参数
$$(run)

# end参数
execute \
    if score end ct.t-code.loop.for_in_list = index ct.t-code.loop.for_in_list \
    run return 0

# out参数
data modify storage ct:code.loop.for_in_list tmp.result append from storage ct:code.loop.for_in_list tmp.curr_item

# 循环(递归)以遍历列表
execute \
    store result storage ct:code.loop.for_in_list tmp.index int 1 \
    run scoreboard players add index ct.t-code.loop.for_in_list 1
function ct:code/loop/meth/for_in_list/2 with storage ct:code.loop.for_in_list tmp