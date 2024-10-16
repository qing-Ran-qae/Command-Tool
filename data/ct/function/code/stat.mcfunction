#> ct:code/stat

# 临时数据
scoreboard objectives add ct.temp.stat dummy

# 执行所有状态的"of"，遍历所有状态
execute \
    store result storage ct:temp code.stat.tick.run_of.index int 1 \
    run scoreboard players set tick.run_of.index ct.temp.stat 0
function ct:code/stat/tick/run_of with storage ct:temp code.stat.tick.run_of

# 临时数据
data remove storage ct:temp code.stat.tick
scoreboard objectives remove ct.temp.stat