tellraw @s[tag=op] [{"text":"成功初始化函数包","color":"green"}]
#规则
gamerule keepInventory true
gamerule commandBlockOutput false
gamerule maxCommandChainLength 65536
gamerule mobGriefing false
#
scoreboard objectives add var dummy
scoreboard objectives add temp dummy
scoreboard objectives add timer dummy