#> ct:mng/room/meth/plar/4
#
# @within ct:mng/room/meth/plar

# 将玩家从房间的玩家列表中删除
$data remove storage \
    ct:mng.room rd-t.'$(id)'.status.player_list[{id:$(player_id)}]
$data remove storage \
    ct:mng.room rd-t.'$(id)'.status.player_table.$(player_id)