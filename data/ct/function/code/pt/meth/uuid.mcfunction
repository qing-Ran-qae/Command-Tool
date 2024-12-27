#> ct:code/pt/meth/uuid
#
# @user
# @public
# @api

# 变量
$data modify storage ct:code.pt.uuid tmp.with set value $(with)

# 生成marker
execute \
    summon marker \
    run function ct:code/pt/meth/uuid/1 with storage ct:code.pt.uuid tmp.with