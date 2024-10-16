#> ct:code/stat/meth/add
#
# @user
# @public
# @api

# 临时
$data modify storage ct:temp add set value {in:"$(in)",stage:$(stage),curr:$(og)}

# 执行起始阶段bg
$data modify storage ct:temp code.stat.info set value $(info)
data modify storage ct:temp add.run_bg.in set from storage ct:temp add.in
$data modify storage ct:temp add.run_bg.bg set from storage ct:temp add.stage[$(og)].bg
execute \
    if data storage ct:temp add{in:"none"} \
    run function ct:code/stat/run_stage/bg_none with storage ct:temp add.run_bg
execute \
    unless data storage ct:temp add{in:"none"} \
    run function ct:code/stat/run_stage/bg_sel with storage ct:temp add.run_bg
data remove storage ct:temp add.run_bg

# uuid
function ct:code/pt/meth/uuid {out:"stroage ct:temp add.uuid"}

# 添加状态实例
data modify storage ct:code.stat inst append from storage ct:temp add

# 临时
data remove storage ct:temp add
data remove storage ct:temp code.stat.info