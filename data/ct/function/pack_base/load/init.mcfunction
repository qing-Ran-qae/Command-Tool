#> ct:pack_base/load/init

# 防重复
execute \
    if score updata_count ct.packmeta matches 3.. \
    run return 1
#endregion

# 顺序 scb -> scores -> bossbar -> team

# 其他
execute \
    in ct:command_tool \
    run forceload add 0 0

# code
    ## et
    #scoreboard objectives add ct.code.et.pbts custom:leave_game
    #scoreboard objectives add ct.code.et.pdd-v
    #scoreboard objectives add ct.code.et.pdd-n
    #scoreboard objectives add ct.code.et.pj
    #scoreboard objectives add ct.code.et.pfc
    #scoreboard objectives add ct.code.et.pd-v
    #scoreboard objectives add ct.code.et.pd-n
    #scoreboard objectives add ct.code.et.pkp-v
    #scoreboard objectives add ct.code.et.pkp-n
    #scoreboard objectives add ct.code.et.pkm-v
    #scoreboard objectives add ct.code.et.pkm-n
    #scoreboard objectives add ct.code.et.ptwv
    #scoreboard objectives add ct.code.et.gb
    #scoreboard objectives add ct.code.et.go
    #scoreboard objectives add ct.code.et.pjg
    #scoreboard objectives add ct.code.et.plg
# mng
    #...