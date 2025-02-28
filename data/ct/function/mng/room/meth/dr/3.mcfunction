#> ct:mng/room/meth/dr/3
#
# @within ct:mng/room/meth/dr

# 将房间从玩家数据中删除
$data remove storage \
    ct:mng.room pd-t.$(player_id).ir-t.'$(room_id)'
$data remove storage \
    ct:mng.room pd-t.$(player_id).ir-l[{id:'$(room_id)'}]