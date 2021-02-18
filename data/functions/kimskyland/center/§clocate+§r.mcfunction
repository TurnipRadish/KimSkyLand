scoreboard players operation @s posX = #kmsCenterX var 
scoreboard players operation @s posY = #kmsCenterY var 
scoreboard players operation @s posZ = #kmsCenterZ var
function pos:read_all
tellraw @s[tag=op] [{"text":"成功传送至最近的中心实体","color":"green"}]