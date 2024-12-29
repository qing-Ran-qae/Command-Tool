#> ct:code/pt/meth/for_in_list
#
# @user
# @public
# @api

# 变量
$data modify storage ct:code.pt.for_in_list tmp set value $(with)
scoreboard objectives add ct.t-code.pt.for_in_list dummy
function ct:code/pt/meth/for_in_list/1 with storage ct:code.pt.for_in_list tmp
execute unless data storage ct:code.pt.for_in_list tmp.end run scoreboard players set end ct.t-code.pt.for_in_list -1
execute if data storage ct:code.pt.for_in_list tmp.end store result score end ct.t-code.pt.for_in_list run data get storage ct:code.pt.for_in_list tmp.end
data modify storage ct:code.pt.for_in_list tmp.result set value []

# start参数
execute \
    if data storage ct:code.pt.for_in_list tmp.start \
    run data modify storage ct:code.pt.for_in_list tmp.index set from storage ct:code.pt.for_in_list tmp.start
execute \
    if data storage ct:code.pt.for_in_list tmp.start \
    store result score index ct.t-code.pt.for_in_list \
    run data get storage ct:code.pt.for_in_list tmp.start

#遍历列表
#初始化
execute \
    unless data storage ct:code.pt.for_in_list tmp.start \
    store result storage ct:code.pt.for_in_list tmp.index int 1 \
    run scoreboard players set index ct.t-code.pt.for_in_list 0
#递归(循环)
function ct:code/pt/meth/for_in_list/2 with storage ct:code.pt.for_in_list tmp

# final参数
execute \
    if data storage ct:code.pt.for_in_list tmp.final \
    run data modify storage ct:code.pt.for_in_list tmp.c set from storage ct:code.pt.for_in_list tmp.final
execute \
    if data storage ct:code.pt.for_in_list tmp.final \
    run function ct:code/pt/meth/run_command with storage ct:code.pt.for_in_list tmp

# out参数
execute \
    if data storage ct:code.pt.for_in_list tmp{out:"in"} \
    run function ct:code/pt/meth/for_in_list/3 with storage ct:code.pt.for_in_list tmp
execute \
    if data storage ct:code.pt.for_in_list tmp.out._ \
    run function ct:code/pt/meth/for_in_list/4 with storage ct:code.pt.for_in_list tmp.out

# 变量
data remove storage ct:code.pt.for_in_list tmp
scoreboard objectives remove ct.t-code.pt.for_in_list