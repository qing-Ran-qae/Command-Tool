#> ct:code/loop/meth/while/1
#
# @within ct:code/loop/meth/while

# 执行用户自定义的命令
$$(run)

# 如果达到循环次数则终止迭代
execute \
    if score count ct.t-code.loop.while >= limit ct.t-code.loop.while \
    run return -1

# 递归（循环）
execute \
    store result storage ct:code.loop.while tmp.count int 1 \
    run scoreboard players add count ct.t-code.loop.while 1
$execute \
    $(con) \
    run function ct:code/loop/meth/while/1 with storage ct:code.loop.while tmp