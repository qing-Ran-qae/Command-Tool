#> ct:pack_base/load/message

tellraw @a [{"text":"CT\n","color":"#3f88e8"},{"translate": "text.ct.pack_base.load.line1","fallback": " 已加载","color": "#25d5dc"}]
tellraw @a [{"translate": "text.ct.pack_base.load.line2","fallback": " 版本："},{"storage": "ct:packmeta","nbt": "version.id","color": "#25d5dc"},{"text": " | ","color": "#25d5dc"},{"storage": "ct:packmeta","nbt": "version.type","color": "#25d5dc"}]