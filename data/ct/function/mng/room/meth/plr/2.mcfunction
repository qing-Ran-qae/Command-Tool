#> ct:mng/room/meth/plr/2
#
# @within ct:mng/room/meth/plr

$data remove storage \
    ct:mng.room pd-t.$(player_id).ir-t.$(id)
$data remove storage \
    ct:mng.room pd-t.$(player_id).ir-l[{id:$(id)}]