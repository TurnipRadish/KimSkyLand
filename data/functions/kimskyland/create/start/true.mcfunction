tellraw @s [{"text":"正在检索合适的岛屿..."}]
#设定状态
function kimskyland:create/player/effect
title @s times 0 3 0
#设置计时器时间
scoreboard players operation @s timer = #kmsCreatingTime var

#岛屿创建次数+1
scoreboard players add #kmsCreateCount var 1

#设定轴序列模式-单向
function kimskyland:create/axle/one-way
scoreboard players tag @s add $kmsCreatingLand

