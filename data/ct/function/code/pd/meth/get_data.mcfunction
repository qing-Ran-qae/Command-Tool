#> ct:code/pd/meth/get_data
#
# @user
# @public
# @api

# 变量
$data modify storage ct:code.pd.get_data tmp set value $(with)

# 获取玩家id
execute \
    store result storage ct:code.pd.get_data tmp.player_id int 1 \
    run scoreboard players get @s bs.cid

# 返回玩家数据
execute \
    if data storage ct:code.pd.get_data tmp.path \
    run function ct:code/pd/meth/get_data/1 with storage ct:code.pd.get_data tmp
execute \
    unless data storage ct:code.pd.get_data tmp.path \
    run function ct:code/pd/meth/get_data/2 with storage ct:code.pd.get_data tmp

# 变量
data remove storage ct:code.pd.get_data tmp