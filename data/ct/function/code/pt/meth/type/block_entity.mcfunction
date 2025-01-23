#> ct:code/pt/meth/type/block_entity
#
# @within ct:code/pt/meth/type

data modify storage ct:code.pt.type tmp.result.block_entity set value false
function ct:code/pt/meth/type/block_entity/1 with storage ct:code.pt.type tmp
execute \
    if data storage ct:code.pt.type tmp{a:true} \
    run data modify storage ct:code.pt.type tmp.result.block_entity set value true