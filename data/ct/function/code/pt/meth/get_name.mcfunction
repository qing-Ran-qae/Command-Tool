#> ct:code/pt/meth/get_name
#
# @user
# @public
# @api

# 变量
#用计分板检测和标签检测差不多，计分板还能适配极端情况（标签数超限）
scoreboard objectives add ct.t-code.pt.get_name dummy
scoreboard players set @s ct.t-code.pt.get_name 0

# 获取玩家名
execute \
    summon text_display \
    run function ct:code/pt/meth/get_name/1

# 变量
scoreboard objectives remove ct.t-code.pt.get_name