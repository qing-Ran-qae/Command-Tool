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