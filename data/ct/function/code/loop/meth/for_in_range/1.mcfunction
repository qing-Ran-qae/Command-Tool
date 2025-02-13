#> ct:code/loop/meth/for_in_range/1
#
# @within ct:code/loop/meth/for_in_range

# 执行用户自定义的命令
$$(run)

# 递归(循环)
execute \
    store result storage ct:code.loop.for_in_range tmp.count int 1 \
    run scoreboard players add count ct.t-code.loop.for_in_range 1
execute \
    unless score count ct.t-code.loop.for_in_range = limit ct.t-code.loop.for_in_range \
    run function ct:code/loop/meth/for_in_range/1 with storage ct:code.loop.for_in_range tmp