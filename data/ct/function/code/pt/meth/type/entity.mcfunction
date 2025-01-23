#> ct:code/pt/meth/type/entity
#
# @within ct:code/pt/meth/type

data modify storage ct:code.pt.type tmp.result.entity set value false
function ct:code/pt/meth/type/entity/1 with storage ct:code.pt.type tmp
execute \
    if data storage ct:code.pt.type tmp{a:true} \
    run data modify storage ct:code.pt.type tmp.result.entity set value true