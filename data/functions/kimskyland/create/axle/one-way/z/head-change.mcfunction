#轴端坐标虽然有xyz三个参数，但是当前仅会使用z坐标值作为实际的轴端坐标
#z轴设定
tellraw @s[tag=debug] ["正在改变改变轴端：z轴方向..."]

function kimskyland:create/axle/one-way/z
#比较z轴坐标和轴长度
scoreboard players operation @s temp = §kmsZ var
scoreboard players operation @s temp -= #kmsZw var

tellraw @s[tag=debug] [{"score":{"objective":"temp","name":"@s"}}]

#z轴轴长度越界
execute @s[score_temp_min=1] ~ ~ ~ function kimskyland:create/axle/one-way/z/out-of-range
#z轴轴长度未越界
execute @s[score_temp=0] ~ ~ ~ function kimskyland:create/axle/one-way/z/right-range







