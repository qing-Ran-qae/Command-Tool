#> ct:code/pt/meth/type/uuid/1
#
# @within ct:code/pt/meth/type

$execute \
    store success storage ct:code.pt.type tmp.a int 1 \
    run data get entity @e[nbt={UUID:$(value)},limit=1]