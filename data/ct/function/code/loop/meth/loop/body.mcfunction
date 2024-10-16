#> ct:code/loop/meth/loop/body
#
# @within ct:code/loop/meth/loop

# 循环体
$$(run)

# i++
scoreboard players add i ct.temp.loop 1

# 跳出循环 结束条件cond
$execute \
    $(cond) \
    run return 1

# 循环 结束条件limit
execute \
    if score i ct.temp.loop <= limit ct.temp.loop \
    run function ct:code/loop/meth/loop/body with storage ct:temp loop