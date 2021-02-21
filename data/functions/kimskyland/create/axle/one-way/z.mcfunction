tellraw @s[tag=debug] ["已在z轴方向同步玩家坐标值"]

#Z轴岛屿创建次数+1
scoreboard players add #kmsCreateCountZ var 1
#(岛屿创建次数+1)* z轴方向岛屿中心间距=z轴方向与中心实体间距
scoreboard players operation §kmsZ var = #kmsCreateCountZ var
scoreboard players operation §kmsZ var *= #kmsSpZ var
#z轴正向生成轴端，所以轴端z坐标值=当前z轴方向与中心实体间距+中心实体z轴坐标
scoreboard players operation §kmsZ var += #kmsCenterZ var

#同步轴端坐标
scoreboard players operation #kmsAxleHeadZ var = §kmsZ var
