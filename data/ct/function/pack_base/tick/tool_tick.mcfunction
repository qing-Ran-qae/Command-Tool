#> ct:pack_base/tick/tool_tick


# code类
execute \
    if data storage ct:settings tool.code.pd{tick:true} \
    run function ct:code/pd/tick

execute \
    if data storage ct:settings tool.code.et{tick:true} \
    as @a \
    run function ct:code/et/tick

# mng类
execute \
    if data storage ct:settings tool.mng.ds{tick:true} \
    run function ct:mng/ds/tick

execute \
    if data storage ct:settings tool.mng.room{tick:true} \
    run function ct:mng/room/tick

execute \
    if data storage ct:settings tool.mng.ias{tick:true} \
    run function ct:mng/ias/tick