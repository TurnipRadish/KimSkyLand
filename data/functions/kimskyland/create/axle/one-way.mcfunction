tellraw @s[tag=debug] ["轴序列：单向序列"]

#x轴设定
function kimskyland:create/axle/one-way/x

#比较x轴坐标和x轴设定长度
scoreboard players operation @s temp = §kmsX var
scoreboard players operation @s temp -= #kmsXw var

#x轴长度越界
execute @s[score_temp_min=1] ~ ~ ~ function kimskyland:create/axle/one-way/x/out_of_range
#x轴长度未越界
execute @s[score_temp=0] ~ ~ ~ function kimskyland:create/axle/one-way/x/right_range

#tellraw @s[tag=debug] [{"score":{"objective":"temp","name":"@s"}}]
#tellraw @s[tag=debug] [{"score":{"objective":"var","name":"§kmsX"}}]

scoreboard players reset @s temp

