#> ct:mng/room/meth/
#
# @user
# @public
# @api

# 变量
$data modify storage \
    ct:mng.room.sg tmp.rd \
    set from storage ct:mng.room rd-t.$(id)

# 防止重复开始游戏
execute \
    if data storage ct:mng.room.sg tmp.rd.status{playing:true} \
    run return run data remove storage ct:mng.room.sg tmp

# 设置游戏中状态
data modify storage \
    ct:mng.room.sg tmp.rd.status.playing \
    set value true

# 执行房间init命令
execute \
    if data storage ct:mng.room.sg tmp.rd.init \
    run function ct:mng/room/meth/sg/1 with storage ct:mng.room.sg tmp.rd

# 将房间的playing命令添加至列表以方便系统执行房间游戏时的tick函数
execute \
    if data storage ct:mng.room.sg tmp.rd.playing \
    run function ct:mng/room/meth/sg/2 \
        with storage ct:mng.room.sg tmp.rd

# 返回房间数据
$data modify storage \
    ct:mng.room rd-t.$(id) \
    set from storage ct:mng.room.sg tmp.rd

# 变量
data remove storage \
    ct:mng.room.sg tmp