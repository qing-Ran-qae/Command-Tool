#> ct:code/pt/meth/ope_l
#
# @user
# @public
# @api

# 临时
scoreboard objectives add ct.temp.ope dummy

# 定义两个数
$execute \
    store result score a ct.temp.ope run data get $(a)
$scoreboard players set b ct.temp.ope $(b)

# 计算
$scoreboard players operation a ct.temp.ope $(ope) b ct.temp.ope

# 返回到a
$execute store result $(a) int 1 run scoreboard players get a ct.temp.ope

# 临时
scoreboard objectives remove ct.temp.ope