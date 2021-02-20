#轴端坐标虽然有xyz三个参数，但是当前仅会使用z坐标值作为实际的轴端坐标
#Z轴岛屿创建次数+1
scoreboard players add #kmsCreateCountZ var 1
#(岛屿创建次数+1)* z轴方向岛屿中心间距=z轴方向与中心实体间距
scoreboard players operation §kmsZ var = #kmsCreateCountZ var
scoreboard players operation §kmsZ var *= #kmsSpZ var
#z轴正向生成轴端，所以轴端z坐标值=当前z轴方向与中心实体间距+中心实体z轴坐标
scoreboard players operation §kmsZ var += #kmsCenterZ var
#比较z轴坐标和轴长度
scoreboard players operation @s temp = §kmsZ var
scoreboard players operation @s temp -= #kmsZw var

tellraw @s[tag=debug] [{"score":{"objective":"temp","name":"@s"}}]

tellraw @s[tag=debug] ["head/change-z已执行"]

#轴长度处理
execute @s[score_temp_min=1] ~ ~ ~ function kimskyland:create/axle/one-way/head/out-of-range
execute @s[score_temp=0] ~ ~ ~ function kimskyland:create/axle/one-way/head/right-range







