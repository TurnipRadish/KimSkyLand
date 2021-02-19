tellraw @s [{"text":"正在变更岛屿搜索范围...","color":"yellow"}]
scoreboard players add @s timer 20
#重置x轴岛屿创建次数
scoreboard players set #kmsCreateCountX var 0
#Z轴岛屿创建次数+1
scoreboard players add #kmsCreateCountZ var 1
#(岛屿创建次数+1)* z轴方向岛屿中心间距=z轴方向与中心实体间距
scoreboard players operation §kmsZ var = #kmsCreateCountZ var
scoreboard players operation §kmsZ var *= #kmsSpZ var
#x轴正向生成，所以玩家坐标值=当前x轴抽方向与中心实体间距+中心实体z轴坐标
scoreboard players operation §kmsZ var += #kmsCenterZ var
#比较z轴坐标和轴长度
scoreboard players operation @s temp = §kmsZ var
scoreboard players operation @s temp -= #kmsZw var
say 2
scoreboard players tag @s add $axleEndTrue