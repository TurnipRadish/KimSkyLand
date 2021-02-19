#检测玩家状态
execute @s[tag=kmsHaveland] ~ ~ ~ tellraw @s [{"text":"您已经拥有空岛了，无法再次创建！"}]
execute @s[tag=!kmsHaveland] ~ ~ ~ function kimskyland:create/start/true