tp @s[tag=op] @e[tag=kmsCenter,c=1]

scoreboard players add §kmsCenter var 0
stats entity @s set SuccessCount @s temp
scoreboard players add @s temp 0
scoreboard players test §kmsCenter var 1 1
stats entity @s clear SuccessCount

execute @s[score_temp_min=1,score_temp=1] ~ ~ ~ function kimskyland:center/§clocate+§r unless @e[tag=kmsCenter,c=1]
execute @s[score_temp_min=1,score_temp=1] ~ ~ ~ function kimskyland:center/§clocate§r if @e[tag=kmsCenter,c=1]
execute @s[score_temp_min=0,score_temp=0] ~ ~ ~ function kimskyland:center/§clocate§r if @e[tag=kmsCenter,c=1]
execute @s[score_temp_min=0,score_temp=0] ~ ~ ~ function kimskyland:center/§cunfound§r unless @e[tag=kmsCenter,c=1]

scoreboard players reset @s temp
