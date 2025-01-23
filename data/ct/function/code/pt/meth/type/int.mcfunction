#> ct:code/pt/meth/type/int
#
# @within ct:code/pt/meth/type

data modify storage ct:code.pt.type tmp.a set value [0]
data modify storage ct:code.pt.type tmp.result.int set value false
function ct:code/pt/meth/type/int/1
execute \
    if data storage ct:code.pt.type tmp{b:1} \
    run data modify storage ct:code.pt.type tmp.result.int set value true