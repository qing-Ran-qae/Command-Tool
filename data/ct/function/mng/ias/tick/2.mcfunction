#> ct:mng/ias/tick/2
#
# @within ct:mng/ias/tick

# 执行时事件内容
$data modify storage ct:mng.ias.tick tmp.c set from storage ct:mng.ias sce.$(gt)
function ct:code/pt/meth/run_command with storage ct:mng.ias.tick tmp
$data remove storage ct:mng.ias sce.$(gt)