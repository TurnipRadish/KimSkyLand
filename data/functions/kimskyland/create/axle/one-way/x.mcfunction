tellraw @s[tag=debug] ["已设定玩家x轴坐标值"]

#x抽方向创建次数+1
scoreboard players add #kmsCreateCountX var 1
#(岛屿创建次数+1)* x轴方向岛屿中心间距=x轴方向与轴端间距
scoreboard players operation §kmsX var = #kmsCreateCountX var
scoreboard players operation §kmsX var *= #kmsSpX var
#x轴正向生成，所以玩家x坐标值=当前x轴抽方向与轴端间距+轴端x轴坐标
scoreboard players operation §kmsX var += #kmsAxleHeadX var
