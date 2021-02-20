#x抽方向创建次数+1
scoreboard players add #kmsCreateCountX var 1
#(岛屿创建次数+1)* x轴方向岛屿中心间距=x轴方向与轴端间距
scoreboard players operation §kmsX var = #kmsCreateCountX var
scoreboard players operation §kmsX var *= #kmsSpX var
#x轴正向生成，所以玩家x坐标值=当前x轴抽方向与轴端间距+轴端x轴坐标
scoreboard players operation §kmsX var += #kmsAxleHeadX var
#比较x轴坐标和轴长度
scoreboard players operation @s temp = §kmsX var
scoreboard players operation @s temp -= #kmsXw var

tellraw @s[tag=debug] ["轴序列：单向序列"]

#末端处理
execute @s[score_temp_min=1] ~ ~ ~ function kimskyland:create/axle/one-way/end/true
execute @s[score_temp=0] ~ ~ ~ function kimskyland:create/axle/one-way/end/false

#tellraw @s[tag=debug] [{"score":{"objective":"temp","name":"@s"}}]
#tellraw @s[tag=debug] [{"score":{"objective":"var","name":"§kmsX"}}]

scoreboard players reset @s temp

