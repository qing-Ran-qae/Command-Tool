#> ct:mng/ias/meth/us/1
#
# @within ct:mng/ias/meth/us

# 设置技能冷却时间
#因为要允许技能效果修改冷却时长所以这条写在这里
execute \
    store result score delay ct.t-mng.ias.us \
    run data get storage ct:mng.ias.us tmp.delay

# 执行技能效果
$$(effect)

# 应用技能冷却时间; 添加技能冷却计划
function ct:code/pt/meth/get_name
data modify storage ct:mng.ias.us tmp.sce.pn set from storage ct:data o.player_name
data modify storage ct:mng.ias.us tmp.sce.sid set from storage ct:mng.ias.us tmp.id
execute \
    store result score gt ct.t-mng.ias.us \
    run time query gametime
scoreboard players operation delay ct.t-mng.ias.us *= 20 ct.t-mng.ias.us
scoreboard players operation delay ct.t-mng.ias.us -= 1 ct.t-mng.ias.us
execute \
    store result storage ct:mng.ias.us tmp.sce.gt int 1 \
    run scoreboard players operation gt ct.t-mng.ias.us += delay ct.t-mng.ias.us
execute \
    unless data storage ct:mng.ias.us tmp{delay:0} \
    run function ct:mng/ias/meth/us/2 with storage ct:mng.ias.us tmp.sce