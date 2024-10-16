#> ct:code/stat/meth/jump
#
# @user
# @public
# @api

# 临时
$data modify storage ct:temp jump set from storage ct:code.stat inst[$(from)]
$data remove storage ct:code.stat inst[$(from)]
data modify storage ct:temp jump.run_stage.in set from storage ct:temp jump.in

# 执行上阶段结束
data modify storage ct:temp code.stat.info set from storage ct:temp jump.info
function ct:code/stat/meth/jump/run_cl with storage ct:temp jump
execute \
    if data storage ct:temp jump.run_stage{in:"none"} \
    run function ct:code/stat/run_stage/cl_none with storage ct:temp jump.run_stage
execute \
    unless data storage ct:temp jump.run_stage{in:"none"} \
    run function ct:code/stat/run_stage/cl_sel with storage ct:temp jump.run_stage

# 修改当前阶段
$data modify storage ct:temp jump.curr set value $(to)

# 执行下阶段开始
data modify storage ct:temp code.stat.info set from storage ct:temp jump.info
$data modify storage ct:temp jump.run_stage.bg set from storage ct:temp jump.stage[$(to)].bg
execute \
    if data storage ct:temp jump.run_stage{in:"none"} \
    run function ct:code/stat/run_stage/bg_none with storage ct:temp jump.run_stage
execute \
    unless data storage ct:temp jump.run_stage{in:"none"} \
    run function ct:code/stat/run_stage/bg_sel with storage ct:temp jump.run_stage
data remove storage ct:temp jump.run_stage

# 返回修改结果
data modify storage ct:code.stat inst append from storage ct:temp jump

# 临时
data remove storage ct:temp jump
data remove storage ct:temp code.stat.info