#> ct:pack_base/load/init

# 防重复
execute \
    if score updata_count ct.packmeta matches 2.. \
    run return 1
#endregion

# 顺序 scb -> scores -> bossbar -> team

# 其他
#...

# code
    ## ds
    scoreboard objectives add ct.code.dv dummy
    data modify storage ct:code.dv clock set value 0
    scoreboard players set clock ct.code.dv 0