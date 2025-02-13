#> ct:mng/ias/meth/rs
#
# @user
# @public
# @api

# 变量
$data modify storage ct:mng.ias.rs tmp set value $(with)

function ct:mng/ias/meth/rs/1 with storage ct:mng.ias.rs tmp

# 变量
data remove storage ct:mng.ias.rs tmp