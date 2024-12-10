# 遍历 ct:code.pt.run_commands tmp.commands

# 转存命令
$execute \
    store success storage ct:code.pt.run_commands tmp.has_item int 1 \
    run data modify storage ct:code.pt.run_commands tmp.curr_command set from storage ct:code.pt.run_commands tmp.commands[$(index)]

# 如果不存在当前元素则以遍历完列表
execute \
    unless data storage ct:code.pt.run_commands tmp{has_item:1} \
    run return 0

# 执行命令
function ct:code/pt/meth/run_commands/2 with storage ct:code.pt.run_commands tmp

# index++
execute \
    store result storage ct:code.pt.run_commands tmp.index int 1 \
    run scoreboard players add index ct.code.pt.run_commands.tmp 1

# 递归调用以循环
function ct:code/pt/meth/run_commands/1 with storage ct:code.pt.run_commands tmp