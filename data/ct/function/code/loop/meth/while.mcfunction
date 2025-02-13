#> ct:code/loop/meth/while
#
# @user
# @public
# @api

# 变量
scoreboard objectives add ct.t-code.loop.while dummy
$data modify storage ct:code.loop.while tmp set value $(with)

# 如果没有传入limit参数则为其设置默认值
execute \
    unless data storage ct:code.loop.while tmp.limit \
    run data modify storage ct:code.loop.while tmp.limit set value 1000

# 将limit值同步至计分项
execute \
    store result score limit ct.t-code.loop.while \
    run data get storage ct:code.loop.while tmp.limit
scoreboard players remove limit ct.t-code.loop.while 1

# 循环
execute \
    store result storage ct:code.loop.while tmp.count int 1 \
    run scoreboard players set count ct.t-code.loop.while 0
function ct:code/loop/meth/while/1 with storage ct:code.loop.while tmp

# 变量
scoreboard objectives remove ct.t-code.loop.while
data remove storage ct:code.loop.while tmp