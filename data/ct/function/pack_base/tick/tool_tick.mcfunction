#> ct:pack_base/tick/tool_tick

execute \
    if data storage ct:settings tool_ena.code{pd:true} \
    run function ct:code/pd/tick

execute \
    if data storage ct:settings tool_ena.code{et:true} \
    as @a \
    run function ct:code/et/tick

execute \
    if data storage ct:settings tool_ena.mng{ds:true} \
    run function ct:mng/ds/tick

execute \
    if data storage ct:settings tool_ena.mng{ias:true} \
    run function ct:mng/ias/tick