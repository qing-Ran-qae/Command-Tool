#> ct:code/dv/tick/run_event
#
# @within ct:code/dv

# 临时
data remove storage ct:temp code.dv.tick

# 复制要执行的事件
$execute \
    store success storage ct:temp code.dv.run_event.has_event int 1 \
    run data modify storage ct:temp code.dv.run_event set from storage ct:code.dv event[{exec_t:$(clock)}]
execute \
    if data storage ct:temp code.dv.run_event{} \
    run function ct:code/dv/exec_event with storage ct:temp code.dv.run_event

# 循环执行此函数已确保这tick所有事件执行完成
execute \
    if data storage ct:temp code.dv{has_event:1} \
    run function ct:code/dv/tick/run_event with storage ct:code.dv