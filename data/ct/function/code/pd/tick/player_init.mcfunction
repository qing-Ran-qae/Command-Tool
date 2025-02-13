#> ct:code/pd/tick/player_init
#
# @within ct:code/pd/tick/as_all_player

# 分配id
function #bs.id:give_cuid

# 获取一些值供初始化操作使用
execute \
    store result storage ct:code.pd.tick.player_init tmp.player_id int 1 \
    run scoreboard players get @s bs.cid
data modify storage ct:code.pd.tick.player_init tmp.player_data set value {}

# 执行用户自定义的初始化操作
execute at @s run function #ct:code/pd/pi

# 保存玩家数据
function ct:code/pd/tick/player_init/1 with storage ct:code.pd.tick.player_init tmp

# 添加“已初始化”实体标签
tag @s add ct.code.pd.inited