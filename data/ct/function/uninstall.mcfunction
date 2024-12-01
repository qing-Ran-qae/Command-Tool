#> ct:uninstall

tellraw @a [{"text":"CT - uninstall\n","color":"#3f88e8"},{"translate": "text.ct.uninstall.line1","with": [{"selector": "@s"}],"color": "#25d5dc"}]
execute \
    unless data storage ct:packmeta {confirm_uninstall:true} \
    run tellraw @s [{"translate": "text.ct.uninstall.line2","color": "#25d5dc"}]
execute \
    unless data storage ct:packmeta {confirm_uninstall:true} \
    run return 0
data remove storage ct:packmeta confirm_uninstall

datapack disable "file/Command-Tool"

scoreboard objectives remove ct.packmeta
scoreboard objectives remove ct.code.dv

tellraw @a [{"text":"CT\n  ","color":"#3f88e8"},{"translate": "text.ct.uninstall.line2","color": "#25d5dc"}]