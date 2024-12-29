#> ct:code/pt/meth/storage_ope
#
# @user
# @public
# @api

# 变量
$data modify storage ct:code.pt.storage_ope tmp set value $(with)
scoreboard objectives add ct.t-code.pt.storage_ope dummy

# 计算
#输入转分数
function ct:code/pt/meth/storage_ope/1 with storage ct:code.pt.storage_ope tmp
execute \
    unless data storage ct:code.pt.storage_ope tmp{num1_is_nbt:1} \
    store result score num1 ct.t-code.pt.storage_ope \
    run data get storage ct:code.pt.storage_ope tmp.num1
function ct:code/pt/meth/storage_ope/2 with storage ct:code.pt.storage_ope tmp
execute \
    unless data storage ct:code.pt.storage_ope tmp{num2_is_nbt:1} \
    store result score num2 ct.t-code.pt.storage_ope \
    run data get storage ct:code.pt.storage_ope tmp.num2
#计算
function ct:code/pt/meth/storage_ope/3 with storage ct:code.pt.storage_ope tmp

# 输出
execute \
    if data storage ct:code.pt.storage_ope tmp.out \
    run function ct:code/pt/meth/storage_ope/4 with storage ct:code.pt.storage_ope tmp
execute \
    unless data storage ct:code.pt.storage_ope tmp.out \
    if data storage ct:code.pt.storage_ope tmp{num1_is_nbt:1} \
    run function ct:code/pt/meth/storage_ope/5 with storage ct:code.pt.storage_ope tmp

# 变量
data remove storage ct:code.pt.storage_ope tmp
scoreboard objectives remove ct.t-code.pt.storage_ope