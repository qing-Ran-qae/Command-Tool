# 转存当前元素
$execute \
    store success storage ct:code.pt.splicing_string tmp.has_item int 1 \
    run data modify storage ct:code.pt.splicing_string tmp.curr set from storage ct:code.pt.splicing_string tmp.in[$(index)]
data modify storage ct:code.pt.splicing_string tmp.last set from storage ct:code.pt.splicing_string tmp.result

# 没有当前元素就是已遍历完列表
execute \
    if data storage ct:code.pt.splicing_string tmp{has_item:0} \
    run return 0

# 拼接字符串
execute unless data storage ct:code.pt.splicing_string tmp.sep run function ct:code/pt/meth/splicing_string/3 with storage ct:code.pt.splicing_string tmp
execute if data storage ct:code.pt.splicing_string tmp.sep run function ct:code/pt/meth/splicing_string/4 with storage ct:code.pt.splicing_string tmp

# 递归(循环)
execute \
    store result storage ct:code.pt.splicing_string tmp.index int 1 \
    run scoreboard players add index ct.t-code.pt.splicing_string 1
function ct:code/pt/meth/splicing_string/2 with storage ct:code.pt.splicing_string tmp