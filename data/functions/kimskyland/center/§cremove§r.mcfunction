kill @e[tag=kmsCenter]
tellraw @s [{"text":"成功移除中心实体","color":"green"}]
scoreboard players set §kmsCenter var 0
scoreboard players reset #kmsCenterX var
scoreboard players reset #kmsCenterY var
scoreboard players reset #kmsCenterZ var
