#> ct:code/loop/meth/trvl_list
#
# @user
# @public
# @api

# 临时
scoreboard objectives add ct.temp.trvl_list dummy
$data modify storage ct:temp trvl_list.run set value "$(run)"

# 索引
execute \
    store result storage ct:temp trvl_list.index int 1 \
    run scoreboard players set index ct.temp.trvl_list 0

# 复制源列表
$data modify storage ct:temp trvl_list.target set from $(target)

# 循环体
function ct:code/loop/meth/trvl_list/body with storage ct:temp trvl_list

# 临时
scoreboard objectives remove ct.temp.trvl_list
data remove storage ct:temp trvl_list