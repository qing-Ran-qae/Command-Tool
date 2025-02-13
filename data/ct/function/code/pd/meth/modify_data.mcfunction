#> ct:code/pd/meth/modify_data
#
# @user
# @public
# @api

# 变量
$data modify storage ct:code.pd.modify_data tmp.value set value '$(value)'

# 获取玩家id
execute \
    store result storage ct:code.pd.modify_data tmp.player_id int 1 \
    run scoreboard players get @s bs.cid

# 修改玩家数据
function ct:code/pd/meth/modify_data/1 with storage ct:code.pd.modify_data tmp

# 变量
data remove storage ct:code.pd.modify_data tmp