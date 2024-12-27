#> ct:code/pt/meth/run_commands
#
# @user
# @public
# @api

# 变量
$data modify storage ct:code.pt.run_commands tmp set value $(with)
scoreboard objectives add ct.code.pt.run_commands.tmp dummy
execute \
    store result storage ct:code.pt.run_commands tmp.index int 0 \
    run scoreboard players set index ct.code.pt.run_commands.tmp 0

# 循环体
function ct:code/pt/meth/run_commands/1 with storage ct:code.pt.run_commands tmp

# 变量
data remove storage ct:code.pt.run_commands tmp
scoreboard objectives remove ct.code.pt.run_commands.tmp