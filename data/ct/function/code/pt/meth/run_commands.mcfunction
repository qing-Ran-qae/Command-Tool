# 变量
data modify storage ct:code.pt.run_commands tmp.commands set from storage ct:data i.commands
scoreboard objectives add ct.code.pt.run_commands.tmp dummy
execute \
    store result storage ct:code.pt.run_commands tmp.index int 0 \
    run scoreboard players set index ct.code.pt.run_commands.tmp 0

# 循环体
function ct:code/pt/meth/run_commands/1 with storage ct:code.pt.run_commands tmp

# 变量
data remove storage ct:data i
data remove storage ct:code.pt.run_commands tmp
scoreboard objectives remove ct.code.pt.run_commands.tmp