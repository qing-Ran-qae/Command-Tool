#> ct:code/loop/meth/loop
#
# @user
# @public
# @api

# 临时
scoreboard objectives add ct.temp.loop dummy
$data modify storage ct:temp loop set value {run:"$(run)",cond:"$(cond)"}
$scoreboard players set limit ct.temp.loop $(limit)

# 循环次数
scoreboard players set i ct.temp.loop 1

# 无结束条件
execute \
    if data storage ct:temp loop{cond:""} \
    run data modify storage ct:temp loop.cond set value "if function ct:none"

# 循环体
function ct:code/loop/meth/loop/body with storage ct:temp loop

# 临时
scoreboard objectives remove ct.temp.loop
data remove storage ct:temp loop