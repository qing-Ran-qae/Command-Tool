#> ct:code/pt/meth/get_name/2
#
# @within ct:code/pt/meth/get_name

# 用宏把实体数据中字符串形式的文本组件拆成字典形式的
$data modify storage ct:code.pt.get_name tmp.text set value $(text)

# 输出文本组件中的玩家名(位于text键)
data modify storage ct:data o.player_name set from storage ct:code.pt.get_name tmp.text.text