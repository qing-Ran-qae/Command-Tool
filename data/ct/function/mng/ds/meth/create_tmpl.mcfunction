#> ct:mng/ds/meth/create_tmpl
#
# @user
# @public
# @api

# 变量
$data modify storage ct:mng.ds.create_tmpl tmp.with set value $(with)

# 将传入的模板加入模板列表
function ct:mng/ds/meth/create_tmpl/1 with storage ct:mng.ds.create_tmpl tmp.with

# 变量
data remove storage ct:mng.ds.create_tmpl tmp