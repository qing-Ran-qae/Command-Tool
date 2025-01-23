#> ct:code/pt/meth/type/list
#
# @within ct:code/pt/meth/type

data modify storage ct:code.pt.type tmp.a set value [[]]
data modify storage ct:code.pt.type tmp.result.list set value false
function ct:code/pt/meth/type/list/1
execute \
    if data storage ct:code.pt.type tmp{b:1} \
    run data modify storage ct:code.pt.type tmp.result.list set value true