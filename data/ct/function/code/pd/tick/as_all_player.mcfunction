#> ct:code/pd/tick/as_all_player
#
# @within ct:code/pd/tick

# 初始化玩家
execute \
    unless entity @s[tag=ct.code.pd.inited] \
    run function ct:code/pd/tick/player_init