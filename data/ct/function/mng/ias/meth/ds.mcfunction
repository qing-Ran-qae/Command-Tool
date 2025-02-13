#> ct:mng/ias/meth/ds
#
# @user
# @public
# @api

# 删除技能冷却计分项
$scoreboard objectives remove ct.mng.ias.sc.$(id)

# 将目标技能从技能列表中移除
$data remove storage ct:mng.ias skills.$(id)