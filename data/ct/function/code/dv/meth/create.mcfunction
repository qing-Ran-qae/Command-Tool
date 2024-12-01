#> ct:code/dv/meth/create
#
# @user
# @public

# 变量初始化
data modify storage ct:t-code.dv.meth create set from storage ct:data i
scoreboard objectives add ct.t-code.dv.meth dummy

# 计算事件执行时间 | rt = clock - delay
execute store result score rt ct.t-code.dv.meth run data get storage ct:t-code.dv.meth delay
scoreboard players operation clock ct.t-code.dv.meth = clock ct.code.dv
execute store result storage ct:t-code.dv.meth rt int 1 run scoreboard players operation clock ct.t-code.dv.meth -= rt ct.t-code.dv.meth 

# 添加事件示例
data modify storage ct:code.dv event append from storage ct:t-code.dv.meth create
data modify storage ct:code.dv plan append from storage ct:t-code.dv.meth rt

# 删除临时
data remove storage ct:data i
scoreboard objectives add ct.t-code.dv.meth dummy