#> ct:code/stat/tick/run_of/a
#
# @within ct:code/stat/tick/run_of

$execute \
    if data storage ct:temp stat.tick.inst{in:"none"} \
    run function ct:code/stat/run_stage/of_none with storage ct:temp stat.tick.inst.stage[$(curr)]
$execute \
    unless data storage ct:temp stat.tick.inst{in:"none"} \
    run function ct:code/stat/run_stage/of_sel with storage ct:temp stat.tick.inst.stage[$(curr)]