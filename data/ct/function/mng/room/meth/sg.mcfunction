#> ct:mng/room/meth/
#
# @user
# @public
# @api

# 变量
$data modify storage ct:mng.room.sg tmp.rd set from storage ct:mng.room rrd.$(id)

# 防止重复开始游戏
execute \
    if data storage ct:mng.room.sg tmp.rd.status{playing:true} \
    run return 0

# 设置游戏中状态
data modify storage ct:mng.room.sg tmp.rd.status.playing set value true

# 执行房间init命令
function ct:mng/room/meth/sg/1 with storage ct:mng.room.sg tmp.rd

# 将房间的playing命令添加至列表以方便系统执行房间游戏时的tick函数
data modify storage ct:mng.room.sg tmp.tld.id set from storage ct:mng.room.sg tmp.rd.id
data modify storage ct:mng.room.sg tmp.tld.c set from storage ct:mng.room.sg tmp.rd.playing
data modify storage ct:mng.room tl append from storage ct:mng.room.sg tmp.tld

# 返回房间数据
$data modify storage ct:mng.room rrd.$(id) set from storage ct:mng.room.sg tmp.rd

# 变量
data remove storage ct:mng.room.sg tmp