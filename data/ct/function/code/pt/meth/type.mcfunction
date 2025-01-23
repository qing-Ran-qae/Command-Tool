#> ct:code/pt/meth/type
#
# @user
# @public
# @api

# 变量
$data modify storage ct:code.pt.type tmp set value $(with)
scoreboard objectives add t-ct.code.pt.type dummy
#将输入的路径替换为路径对应的值
function ct:code/pt/meth/type/get_data with storage ct:code.pt.type tmp

tellraw @a {"storage": "ct:code.pt.type","nbt": "tmp"}

# 短整型(int)
execute \
    if data storage ct:code.pt.type tmp{int:true} \
    run function ct:code/pt/meth/type/int

# 长整型(long)
execute \
    if data storage ct:code.pt.type tmp{long:true} \
    run function ct:code/pt/meth/type/long

# 双精度浮点数(double)
execute \
    if data storage ct:code.pt.type tmp{double:true} \
    run function ct:code/pt/meth/type/double

# 单精度浮点数(float)
execute \
    if data storage ct:code.pt.type tmp{float:true} \
    run function ct:code/pt/meth/type/float

# 字符串(string)
execute \
    if data storage ct:code.pt.type tmp{string:true} \
    run function ct:code/pt/meth/type/string

# 字典(dict)
execute \
    if data storage ct:code.pt.type tmp{dict:true} \
    run function ct:code/pt/meth/type/dict

# 列表(list)
execute \
    if data storage ct:code.pt.type tmp{list:true} \
    run function ct:code/pt/meth/type/list

# 命令储存中已存在的nbt标签(storage)
execute \
    if data storage ct:code.pt.type tmp{storage:true} \
    run function ct:code/pt/meth/type/storage with storage ct:code.pt.type tmp

# 位于已加载区块中的实体的NBT标签(entity)
execute \
    if data storage ct:code.pt.type tmp{entity:true} \
    run function ct:code/pt/meth/type/entity with storage ct:code.pt.type tmp

# 位于已加载区块中的方块实体的NBT标签(block_entity)
execute \
    if data storage ct:code.pt.type tmp{block_entity:true} \
    run function ct:code/pt/meth/type/block_entity with storage ct:code.pt.type tmp

# 一个位于已加载区块中的实体的UUID(uuid)
execute \
    if data storage ct:code.pt.type tmp{uuid:true} \
    run function ct:code/pt/meth/type/uuid with storage ct:code.pt.type tmp

# 文本组件(text_comp)
execute \
    if data storage ct:code.pt.type tmp{text_comp:true} \
    run function ct:code/pt/meth/type/text_comp with storage ct:code.pt.type tmp

# 目标选择器(selector)
execute \
    if data storage ct:code.pt.type tmp{selector:true} \
    run function ct:code/pt/meth/type/selector with storage ct:code.pt.type tmp

# 输出结果
data modify storage ct:data o set from storage ct:code.pt.type tmp.result

# 变量
data remove storage ct:code.pt.type tmp
scoreboard objectives remove t-ct.code.pt.type