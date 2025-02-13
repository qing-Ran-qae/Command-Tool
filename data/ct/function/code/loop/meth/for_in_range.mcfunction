#> ct:code/loop/meth/for_in_range
#
# @user
# @public
# @api

# 变量
scoreboard objectives add ct.t-code.loop.for_in_range dummy
$data modify storage ct:code.loop.for_in_range tmp set value $(with)
execute \
    store result storage ct:code.loop.for_in_range tmp.count int 1 \
    run scoreboard players set count ct.t-code.loop.for_in_range 0
execute \
    store result score limit ct.t-code.loop.for_in_range \
    run data get storage ct:code.loop.for_in_range tmp.limit

# 循环
function ct:code/loop/meth/for_in_range/1 with storage ct:code.loop.for_in_range tmp

# 变量
scoreboard objectives remove ct.t-code.loop.for_in_range
data remove storage ct:code.loop.for_in_range tmp