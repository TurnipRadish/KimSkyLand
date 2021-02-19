function login:re/text
execute @s[tag=kmsCreatingLand] ~ ~ ~ function kimskyland:create/reset
scoreboard players tag @s add $reLogin
scoreboard players reset @s leaveGame