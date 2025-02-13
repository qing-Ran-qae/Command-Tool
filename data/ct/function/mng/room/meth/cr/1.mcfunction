#> ct:mng/room/meth/cr/1
#
# @within ct:mng/room/meth/cr

$execute \
    if data storage ct:mng.room rrd.$(id) \
    run data modify storage ct:mng.room.cr tmp.dn set value true