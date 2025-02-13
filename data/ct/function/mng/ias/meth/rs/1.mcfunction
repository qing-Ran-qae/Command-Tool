#> ct:mng/ias/meth/rs/1
#
# @within ct:mng/ias/meth/rs

# 创建技能冷却计分项
$scoreboard objectives add ct.mng.ias.sc.$(id) dummy

# 将新技能添加至技能列表
$data modify storage ct:mng.ias skills.$(id) set from storage ct:mng.ias.rs tmp