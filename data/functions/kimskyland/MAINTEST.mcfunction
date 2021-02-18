say MAINTEST不应该被直接执行

#添加管理员标签
scoreboard players tag @s add op
#计分板
scoreboard objectives add var 

#中心实体
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["kmsCenter"],CustomName:"kmsCenter"}
tellraw @s[tag=op] [{"text":"成功召唤中心实体，空岛将会以此为起点或中心进行生成","color":"green"}]
scoreboard players set §kmsCenter var 1

#检测虚拟玩家分数是否符合，并执行对应函数
scoreboard players add §kmsCenter var 0
stats entity @s set SuccessCount @s test
scoreboard players add @s test 0
scoreboard players test §kmsCenter var 1 1
stats entity @s clear SuccessCount
function 1 if @s[score_test=1,score_test_min=1]
function 2 if @s[score_test=0,score_test_min=0]


