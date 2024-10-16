#> ct:pack_base/tick/tool_tick

# code
    ## dv
    execute if data storage ct:settings tool_ena.code{dv:true} run function ct:code/dv
    ## stat
    execute if data storage ct:settings tool_ena.code{stat:true} run function ct:code/stat