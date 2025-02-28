#> ct:mng/room/tick

# 变量
scoreboard objectives add ct.t-mng.room.tick dummy

# 执行游戏中房间的tick命令
execute \
    if data storage ct:mng.room tl[0] \
    run function ct:mng/room/tick/1

# 变量
scoreboard objectives remove ct.t-mng.room.tick
data remove storage ct:mng.room.tick tmp