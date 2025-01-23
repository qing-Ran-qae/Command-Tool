#> ct:code/pt/meth/type/long
#
# @within ct:code/pt/meth/type

data modify storage ct:code.pt.type tmp.a set value [0l]
data modify storage ct:code.pt.type tmp.result.long set value false
function ct:code/pt/meth/type/long/1
execute \
    if data storage ct:code.pt.type tmp{b:1} \
    run data modify storage ct:code.pt.type tmp.result.long set value true