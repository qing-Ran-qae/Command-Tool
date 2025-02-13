#> ct:mng/room/meth/
#
# @user
# @public
# @api

# 变量
$data modify storage ct:mng.room.cr tmp.rd set value $(with)

# 检测是否和已有房间重名
function ct:mng/room/meth/cr/1 with storage ct:mng.room.cr tmp.rd
execute \
    if data storage ct:mng.room.ct tmp{dn:true} \
    run return run data remove storage ct:mng.room.cr tmp

# 设置新房间状态
data modify storage ct:mng.room.cr tmp.rd.status set value { \
    player_count:0, \
    player_list:[], \
    playing: false, \
    nowgame_var: {}, \
}

# 创建新房间
function ct:mng/room/meth/cr/2 with storage ct:mng.room.cr tmp.rd

# 变量
data remove storage ct:mng.room.cr tmp