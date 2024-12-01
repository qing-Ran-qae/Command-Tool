#> ct:pack_base/load/packmeta.mcfunction

# packmeta
#ds (version.type : release or beta ro alpha)
data modify storage ct:packmeta ct set value true
data modify storage ct:packmeta updata_count set value 2
data modify storage ct:packmeta version set value {"type":"alpha","id":"0.1.0.0"}
data modify storage ct:packmeta update set value 20241201
#scb
scoreboard objectives add ct.packmeta dummy
scoreboard players set ct ct.packmeta 1
scoreboard players set updata_count ct.packmeta 2
#endregion