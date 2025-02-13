#> ct:mng/ias/meth/us
#
# @user
# @public
# @api

# 变量
scoreboard objectives add ct.t-mng.ias.us dummy
scoreboard players set 20 ct.t-mng.ias.us 20
scoreboard players set 1 ct.t-mng.ias.us 1

# 变量
$data modify storage ct:mng.ias.us tmp set from storage ct:mng.ias skills.$(id)

# 技能冷却中
$execute \
    if score @s ct.mng.ias.sc.$(id) matches 1 \
    run return run function ct:mng/ias/meth/us/4 with storage ct:mng.ias.us tmp

execute \
    store result storage ct:mng.ias.us tmp.gt int 1 \
    run time query gametime

# 执行技能
function ct:mng/ias/meth/us/1 with storage ct:mng.ias.us tmp

# 变量
scoreboard objectives remove ct.t-mng.ias.us
data remove storage ct:mng.ias.us tmp