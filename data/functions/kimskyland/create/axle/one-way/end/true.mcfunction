tellraw @s [{"text":"正在变更岛屿搜索范围...","color":"yellow"}]
scoreboard players add @s timer 20
#重置x轴岛屿创建次数
scoreboard players set #kmsCreateCountX var 0

#改变z轴方向轴端
tellraw @s[tag=debug] ["end/true已执行"]

function kimskyland:create/axle/one-way/head/change-z

