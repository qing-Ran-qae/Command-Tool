# 检测是否和已有模板重名
$execute \
    if data storage ct:mng.ds.create_tmpl tmpl_table.$(name) \
    run return run data modify storage ct:mng.ds.create_tmpl tmp.dup_name set value true

# 添加事件
#table
$data modify storage ct:mng.ds tmpl_table.$(name) set from storage ct:mng.ds.create_tmpl tmp.with
#list
data modify storage ct:mng.ds.create_tmpl tmp.new_tmpl.name set from storage ct:mng.ds.create_tmpl tmp.with.name
data modify storage ct:mng.ds tmpl_list append from storage ct:mng.ds.create_tmpl tmp.new_tmpl