tellraw @s[tag=debug] ["成功改变玩家坐标至当前轴端"]

scoreboard players operation @s posZ = #kmsAxleHeadZ var
function pos:read_z
