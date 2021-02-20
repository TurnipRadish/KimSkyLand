execute @s[score_timer_min=100,score_timer=100,tag=$kmsAxleEndTrue] ~ ~ ~ function kimskyland:create/axle/one-way/head/change-player
execute @s[score_timer_min=65,score_timer=65,tag=$kmsAxleEndFalse] ~ ~ ~ function kimskyland:create/axle/one-way/end/change-player-x
execute @s[score_timer_min=40,score_timer=40,tag=$kmsAxleEndFalse] ~ ~ ~ function kimskyland:create/axle/one-way/end/change-player-z
execute @s[score_timer_min=20,score_timer=20] ~ ~ ~ function kimskyland:create/template
