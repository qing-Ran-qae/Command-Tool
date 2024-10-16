#> ct:code/pt/meth/uuid
#
# @user
# @public
# @api

execute \
    summon marker \
    run tag @s add ct.temp.uuid
$data modify $(out) set from entity @e[limit=1,type=marker,tag=ct.temp.uuid] UUID
kill @e[limit=1,type=marker,tag=ct.temp.uuid]