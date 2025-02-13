#> ct:code/pt/meth/get_name/1
#
# @within ct:code/pt/meth/get_name

data modify entity @s text set value '{"selector": "@a[scores={ct.t-code.pt.get_name=0},limit=1]"}'
function ct:code/pt/meth/get_name/2 with entity @s
kill @s