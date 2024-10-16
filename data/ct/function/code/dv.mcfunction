#> ct:code/dv

# 检测事件然后执行事件
function ct:code/dv/tick/run_event with storage ct:code.dv

# 减时刻
scoreboard players remove clock ct.code.dv 1
execute \
    store result storage ct:code.dv clock int 1 \
    run scoreboard players get clock ct.code.dv

# 临时数据
data remove storage ct:temp dv