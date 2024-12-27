# 变量
$data modify storage ct:code.pt.splicing_string tmp set value $(with)
scoreboard objectives add ct.t-code.pt.splicing_string dummy
#从输入路径处复制要合并的字符串列表
function ct:code/pt/meth/splicing_string/1 with storage ct:code.pt.splicing_string tmp

# 拼接字符串
execute \
    store result storage ct:code.pt.splicing_string tmp.index int 1 \
    run scoreboard players set index ct.t-code.pt.splicing_string 1
data modify storage ct:code.pt.splicing_string tmp.result set from storage ct:code.pt.splicing_string tmp.in[0]
function ct:code/pt/meth/splicing_string/2 with storage ct:code.pt.splicing_string tmp

# 输出
function ct:code/pt/meth/splicing_string/5 with storage ct:code.pt.splicing_string tmp

# 变量
data remove storage ct:code.pt.splicing_string tmp
scoreboard objectives remove ct.t-code.pt.splicing_string