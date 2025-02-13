#> ct:mng/ias/tick/1
#
# @within ct:mng/ias/tick

$execute \
    if data storage ct:mng.ias sce.$(gt) \
    run function ct:mng/ias/tick/2 with storage ct:mng.ias.tick tmp