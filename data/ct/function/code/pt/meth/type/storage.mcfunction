#> ct:code/pt/meth/type/storage
#
# @within ct:code/pt/meth/type

data modify storage ct:code.pt.type tmp.result.storage set value false
function ct:code/pt/meth/type/storage/1 with storage ct:code.pt.type tmp
execute \
    if data storage ct:code.pt.type tmp{a:true} \
    run data modify storage ct:code.pt.type tmp.result.storage set value true