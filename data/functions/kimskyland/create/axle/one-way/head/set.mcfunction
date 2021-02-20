function pos:get_all
scoreboard players operation #kmsAxleHeadX var = @s posX
scoreboard players operation #kmsAxleHeadY var = @s posY
scoreboard players operation #kmsAxleHeadZ var = @s posZ
tellraw @s [{"text":"成功设置当前位置为单向序列轴端","color":"green"}]