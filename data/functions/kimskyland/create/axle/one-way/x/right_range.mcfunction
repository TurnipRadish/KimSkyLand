tellraw @s[tag=debug] ["已同步轴端z坐标到玩家z坐标值"]
tellraw @s [{"text":"岛屿定位成功！","color":"green"}]
#同步z轴轴端坐标到玩家z坐标值
scoreboard players operation @s posZ = #kmsAxleHeadZ var
scoreboard players operation @s posX = §kmsX var
scoreboard players tag @s add $kmsAxleX
scoreboard players tag @s add $kmsAxleZ
