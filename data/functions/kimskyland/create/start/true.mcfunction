tellraw @s [{"text":"正在检索合适的岛屿..."}]
#设定状态
function kimskyland:create/player/effect
title @s times 0 3 0
scoreboard players tag @s add $kmsCreatingLand
scoreboard players tag @s add $kmsChangeAxle
#设置计时器时间
scoreboard players operation @s timer = #kmsCreatingTime var

#岛屿创建次数+1
scoreboard players add #kmsCreateCount var 1
scoreboard players add #kmsCreateCountX var 1
#(岛屿创建次数+1)* x抽方向岛屿中心间距=x抽方向与中心实体间距
scoreboard players operation §kmsX var = #kmsCreateCountX var
scoreboard players operation §kmsX var *= #kmsSpX var
#x轴正向生成，所以玩家坐标值=当前x轴抽方向与中心实体间距+中心实体x轴坐标
scoreboard players operation §kmsX var += #kmsCenterX var
#比较x轴坐标和轴长度
scoreboard players operation @s temp = §kmsX var
scoreboard players operation @s temp -= #kmsXw var
#标记状态
execute @s[score_temp_min=1] ~ ~ ~ function kimskyland:create/axle/end-true
execute @s[score_temp=0] ~ ~ ~ function kimskyland:create/axle/end-false
scoreboard players reset @s temp
