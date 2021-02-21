scoreboard players remove #kmsCreateCountZ var 1
tellraw @s [{"text":"轴长度越界","color":"red"}]

tellraw @a[tag=op] [{"text":"[错误]: ","color":"red","bold":"true"},{"text":"z轴长度越界","color":"red","bold":"false"}]
tellraw @a[tag=op] [{"text":"空岛创建程序异常，在玩家:","color":"red"},{"selector":"@s"}]

tellraw @s[tag=debug] ["轴长度越界"]

function kimskyland:create/reset
function kimskyland:center/locate
function kimskyland:create/start/back
