#> ct:code/dv/meth/has
#
# @user
# @public
# @api

# 临时
$data modify storage ct:temp create set value {info:$(info),run:$(run),cycle:$(cycle),delay:$(delay)}
scoreboard objectives add ct.temp.create dummy
execute \
    store result score exec_t ct.temp.create \
    run data get storage ct:temp create.delay

# 处理exec_t | 当前时钟刻 - 输入的exec_t = 事件的执行时间
    ## 获取当前时钟刻
    execute \
        store result score clock ct.temp.create \
        run scoreboard players get clock ct.code.dv
    ## 计算并返回到变量
    execute \
        store result storage ct:temp create.exec_t int 1 \
        run scoreboard players operation clock ct.temp.create -= exec_t ct.temp.create

# 处理replace | data remove storage ct:code.dv event[{$(key):$(value)}]
    ## 获取键/值
    $data modify storage ct:temp create.replace.key set value $(replace)
    $data modify storage ct:temp create.replace.value set from storage ct:temp create.$(replace)
    ## 删除重复事件
    function ct:code/dv/meth/create/replace with storage ct:temp create.replace
    data remove storage ct:temp create.replace

# 生成uuid
function ct:code/pt/meth/uuid {out:"storage ct:temp create.uuid"}

# 添加事件
data modify storage ct:code.dv event append from storage ct:temp create

# 临时
data remove storage ct:temp create
scoreboard objectives remove ct.temp.create