scoreboard players add §kmsCenter var 0
stats entity @s set SuccessCount @s temp
scoreboard players add @s temp 0
scoreboard players test §kmsCenter var 1 1
stats entity @s clear SuccessCount

execute @s[score_temp=0,score_temp_min=0] ~ ~ ~ function kimskyland:center/§creject§r if @e[tag=kmsCenter] 
execute @s[score_temp=0,score_temp_min=0] ~ ~ ~ function kimskyland:center/§csummon§r unless @e[tag=kmsCenter] 
execute @s[score_temp=1,score_temp_min=1] ~ ~ ~ function kimskyland:center/§creject§r if @e[tag=kmsCenter]  
execute @s[score_temp=1,score_temp_min=1] ~ ~ ~ function kimskyland:center/§creject§r unless @e[tag=kmsCenter] 

scoreboard players reset @s temp

