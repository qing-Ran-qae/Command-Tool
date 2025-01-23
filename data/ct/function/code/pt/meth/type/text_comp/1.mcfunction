#> ct:code/pt/meth/type/string/1
#
# @within ct:code/pt/meth/type

$execute \
    store success storage ct:code.pt.type tmp.b int 1 \
    run tellraw @s $(value)
kill @s