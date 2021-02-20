tellraw @s [{"text":"成功改变轴端","color":"green"}]
#改变z轴轴端坐标
scoreboard players operation #kmsAxleHeadZ var = §kmsZ var
scoreboard players tag @s add $kmsAxleEndTrue

tellraw @s[tag=debug] ["已改变z轴轴端坐标"]
