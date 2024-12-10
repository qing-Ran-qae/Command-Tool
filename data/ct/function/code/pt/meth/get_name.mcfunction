#> ct:code/pt/meth/get_name
#
# @user
# @public

# 变量
data modify storage ct:code.pt.get_name tmp.out set from storage ct:data i.out
tag @s add ct.code.pt.get_name.target

# 生成文本展示以解析输入的目标玩家名
summon text_display ~ ~ ~ {Tags:['ct.code.pt.get_name.text_display'],text:'{"selector": "@a[tag=ct.code.pt.get_name.target]"}',alignment:"left"}
execute \
    as @e[type=text_display,tag=ct.code.pt.get_name.text_display,limit=1] \
    run function ct:code/pt/meth/get_name/1

# 变量
tag @s remove ct.code.pt.get_name.target
data remove storage ct:code.pt.get_name tmp
data remove storage ct:data i