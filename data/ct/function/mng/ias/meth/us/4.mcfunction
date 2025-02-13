#> ct:mng/ias/meth/us/4
#
# @within ct:mng/ias/meth/us

# 如果技能没有指定"cooling"值则不执行函数
execute \
    unless data storage ct:mng.ias.us tmp.cooling \
    run return 0

# 执行"cooling"内容
data modify storage ct:mng.ias.us tmp.c set from storage ct:mng.ias.us tmp.cooling
function ct:code/pt/meth/run_command with storage ct:mng.ias.us tmp