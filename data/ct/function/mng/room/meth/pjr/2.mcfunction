#> ct:mng/room/meth/pjr/2
#
# @within ct:mng/room/meth/pjr

$data modify storage \
    ct:mng.room pd-t.$(player_id).ir-t.$(id) \
    set value true
$data modify storage \
    ct:mng.room pd-t.$(player_id).ir-l \
    append value {id:'$(id)'}