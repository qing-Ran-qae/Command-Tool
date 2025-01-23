#> ct:code/pt/meth/type/uuid
#
# @within ct:code/pt/meth/type

data modify storage ct:code.pt.type tmp.result.uuid set value false
function ct:code/pt/meth/type/uuid/1 with storage ct:code.pt.type tmp
execute \
    if data storage ct:code.pt.type tmp{a:1} \
    run data modify storage ct:code.pt.type tmp.result.uuid set value true