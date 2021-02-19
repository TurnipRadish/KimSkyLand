scoreboard players remove @s timer 1
execute @s[score_timer_min=100,score_timer=100,tag=$kmsAxleEndTrue] ~ ~ ~ function kimskyland:create/read_z
execute @s[score_timer_min=80,score_timer=80,tag=$kmsAxleEndFalse] ~ ~ ~ function kimskyland:create/read_x
execute @s[score_timer_min=20,score_timer=20] ~ ~ ~ function kimskyland:create/template
title @s title ["正在创建岛屿中..."]
