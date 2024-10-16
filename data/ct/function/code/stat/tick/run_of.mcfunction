#> ct:code/stat/tick/run_of
#
# @within ct:code/stat

# 临时数据
$execute \
    store success storage ct:temp code.stat.tick.run_of.has_item int 1 \
    run data modify storage ct:temp code.stat.tick.inst set from storage ct:code.stat inst[$(index)]

# 跳出循环
execute \
    if data storage ct:temp code.stat.tick.run_of{has_item:false} \
    run return 1

# 执行$(curr)阶段的$(of)
function ct:code/stat/tick/run_of/a with storage ct:temp code.stat.tick.inst

# 下次循环
#index++
execute \
    store result storage ct:temp code.stat.tick.run_of.index int 1 \
    run scoreboard players add run_of.index ct.temp.stat 1
function ct:code/stat/tick/run_of with storage ct:temp code.stat.tick.run_of.index