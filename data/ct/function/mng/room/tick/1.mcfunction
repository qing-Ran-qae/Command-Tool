#> ct:mng/room/tick/1
#
# @within ct:mng/room/tick

execute \
    store result storage ct:mng.room.tick tmp.index int 1 \
    run scoreboard players set index ct.t-mng.room.tick 0
function ct:mng/room/tick/2 \
    with storage ct:mng.room.tick tmp