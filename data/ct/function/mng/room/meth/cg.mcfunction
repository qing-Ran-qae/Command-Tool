#> ct:mng/room/meth/cg
#
# @user
# @public
# @api

# 变量
$data modify storage \
    ct:mng.room.cg tmp.rd \
    set from storage ct:mng.room rd-t.$(id)

# 如果房间未开始游戏则不执行函数
execute \
    if data storage ct:mng.room.cg tmp.rd.status{playing:false} \
    run return run data remove storage ct:mng.room.cg tmp

# 设置房间状态为不在游戏中
data modify storage \
    ct:mng.room.cg tmp.rd.status.playing \
    set value false

# 删除tick命令
$data remove storage \
    ct:mng.room tl[{id:'$(id)'}]

# 删除场次变量
data modify storage \
    ct:mng.room.cg tmp.rd.nowgame_var \
    set value {}

# 执行房间end命令
execute \
    if data storage ct:mng.room.cg tmp.rd.end \
    run function ct:mng/room/meth/cg/1 \
        with storage ct:mng.room.cg tmp.rd

# 返回房间数据
$data modify storage \
    ct:mng.room rd-t.$(id) \
    set from storage ct:mng.room.cg tmp.rd

# 变量
data remove storage ct:mng.room.cg tmp