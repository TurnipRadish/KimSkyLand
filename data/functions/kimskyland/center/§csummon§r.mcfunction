kill @e[tag=kmsCenter]
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["kmsCenter"],CustomName:"kmsCenter"}
scoreboard players set §kmsCenter var 1
function pos:get_all
scoreboard players operation #kmsCenterX var = @s posX
scoreboard players operation #kmsCenterY var = @s posY
scoreboard players operation #kmsCenterZ var = @s posZ
tellraw @s[tag=op] [{"text":"成功召唤中心实体，空岛将会以此为起点或中心进行生成","color":"green"}]
tellraw @s[tag=op] [{"text":"若存在其他中心实体，系统会以最近实体为准","color":"yellow"}]
