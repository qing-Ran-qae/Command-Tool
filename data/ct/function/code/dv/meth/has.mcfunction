#> ct:code/dv/meth/has
#
# @user
# @public
# @api

$execute \
    store success storage ct:temp has_event int 1 \
    if data storage ct:code.dv event[$(target)]
execute if data storage ct:temp {has:1} run return 1
execute if data storage ct:temp {has:0} run return 0

# 临时
data remove storage ct:temp has_event