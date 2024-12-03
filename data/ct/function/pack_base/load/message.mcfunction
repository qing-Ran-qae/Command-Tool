#> ct:pack_base/load/message

tellraw @a [{"text":"CT - load","color":"#3f88e8"}]
tellraw @a [{"translate": "text.ct.pack_base.load.line1","color": "#25d5dc"}]
tellraw @a [{"translate": "text.ct.pack_base.load.line2","with": [{"storage": "ct:packmeta","nbt": "version.id"}]}]