#> ct:mng/ias/tick

# 处理技能冷却
execute \
    store result storage ct:mng.ias.tick tmp.gt int 1 \
    run time query gametime
function ct:mng/ias/tick/1 with storage ct:mng.ias.tick tmp