#> ct:uninstall

execute \
    unless data storage ct:packmeta {confirm_uninstall:true} \
    run tellraw @a [{"text":"CT\n","color":"#3f88e8"},{"translate": "text.ct.uninstall.tip1","with": [{"selector": "@s"}],"fallback": "  正在尝试卸载CT","color": "#25d5dc"}]
execute \
    unless data storage ct:packmeta {confirm_uninstall:true} \
    run tellraw @s [{"translate": "text.ct.uninstall.tip2","fallback": "  如果你确定要卸载CT请将ct:packmeta储存下confirm_uninstall的值更改为true","color": "#25d5dc"}]
execute \
    unless data storage ct:packmeta {confirm_uninstall:true} \
    run return 0
data remove storage ct:packmeta confirm_uninstall

datapack disable "file/Command-Tool"

scoreboard objectives remove ct.packmeta
scoreboard objectives remove ct.code.dv

tellraw @a [{"text":"CT\n  ","color":"#3f88e8"},{"translate": "text.ct.uninstall.tip3","fallback": "    因为mcfunc不能一键删除data储存，所以如果要删除CT的data储存的话请删除[存档/data/command_storage_ct.dat]文件","color": "#25d5dc"},{"text": "    如果要重新加载CT，请使用指令启用数据包","color": "#25d5dc"}]