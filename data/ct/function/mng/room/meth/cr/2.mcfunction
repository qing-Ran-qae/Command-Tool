#> ct:mng/room/meth/cg/2
#
# @within ct:mng/room/meth/cg

$data modify storage ct:mng.room rd-t.'$(id)' set from storage ct:mng.room.cr tmp.rd
$data modify storage ct:mng.room rd-l append value {id:'$(id)'}