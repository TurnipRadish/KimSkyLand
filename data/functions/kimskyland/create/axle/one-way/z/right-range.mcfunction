tellraw @s[tag=debug] ["已改变z轴轴端坐标"]

tellraw @s [{"text":"成功改变轴端","color":"green"}]
#同步z轴轴端坐标
scoreboard players operation @s posZ = #kmsAxleHeadZ var
scoreboard players operation @s posX = §kmsX var
scoreboard players tag @s add $kmsAxleZ
scoreboard players tag @s add $kmsAxleX


