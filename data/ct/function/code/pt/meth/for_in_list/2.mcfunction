#> ct:code/pt/meth/for_in_list/2
#
# @within ct:code/pt/meth/for_in_list

# 转存当前元素
$execute \
    store success storage ct:code.pt.for_in_list tmp.has_item int 1 \
    run data modify storage ct:code.pt.for_in_list tmp.curr_item set from storage ct:code.pt.for_in_list tmp.in[$(index)]

# 如果不存在当前元素就是遍历完了
execute \
    if data storage ct:code.pt.for_in_list tmp{has_item:0} \
    run return 0

# 执行自定义内容
$$(run)

# end参数
execute \
    if score end ct.t-code.pt.for_in_list = index ct.t-code.pt.for_in_list \
    run return 0

# 循环(递归)以遍历列表
execute \
    store result storage ct:code.pt.for_in_list tmp.index int 1 \
    run scoreboard players add index ct.t-code.pt.for_in_list 1
function ct:code/pt/meth/for_in_list/2 with storage ct:code.pt.for_in_list tmp