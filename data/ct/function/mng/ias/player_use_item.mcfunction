#> ct:mng/ias/player_use_item

# 变量
data modify storage ct:mng.ias.player_use_item tmp.item_data set from entity @s SelectedItem.components

# 如果物品不是道具则不执行函数时
execute \
    unless data storage ct:mng.ias.player_use_item tmp.item_data."minecraft:custom_data".ct.mng.ias{item:true} \
    run return 0

# 执行道具操作
function ct:mng/ias/player_use_item/1 with storage ct:mng.ias.player_use_item tmp.item_data."minecraft:custom_data".ct.mng.ias.item_data

# 变量
data remove storage ct:mng.ias.player_use_item tmp
advancement revoke @s only ct:mng/ias/player_use_item