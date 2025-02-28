#> ct:mng/room/meth/pjr/1
#
# @within ct:mng/room/meth/pjr

$execute \
    if data storage ct:mng.room.pjr tmp.rd.player_table.'$(player_id)' \
    run return run data modify storage ct:mng.room.pjr tmp.air set value true