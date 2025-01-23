#> ct:code/pt/meth/type/double
#
# @within ct:code/pt/meth/type

data modify storage ct:code.pt.type tmp.a set value [0d]
data modify storage ct:code.pt.type tmp.result.double set value false
function ct:code/pt/meth/type/double/1
execute \
    if data storage ct:code.pt.type tmp{b:1} \
    run data modify storage ct:code.pt.type tmp.result.double set value true