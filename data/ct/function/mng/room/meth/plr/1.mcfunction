#> ct:mng/room/meth/plr/1
#
# @within ct:mng/room/meth/plr

$execute \
    unless data storage ct:mng.room.plr tmp.rd.status.player_table.$(player_id) \
    run return run data modify storage ct:mng.room.plr tmp.anir set value true