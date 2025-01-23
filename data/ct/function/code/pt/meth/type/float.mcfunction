#> ct:code/pt/meth/type/float
#
# @within ct:code/pt/meth/type

data modify storage ct:code.pt.type tmp.a set value [0f]
data modify storage ct:code.pt.type tmp.result.float set value false
function ct:code/pt/meth/type/float/1
execute \
    if data storage ct:code.pt.type tmp{b:1} \
    run data modify storage ct:code.pt.type tmp.result.float set value true