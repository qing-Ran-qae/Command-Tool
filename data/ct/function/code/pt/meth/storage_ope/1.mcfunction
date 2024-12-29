#> ct:code/pt/meth/storage_ope/1
#
# @within ct:code/pt/meth/storage_ope

$execute \
    store success storage ct:code.pt.storage_ope tmp.num1_is_nbt int 1 \
    store result score num1 ct.t-code.pt.storage_ope \
    run data get $(num1)