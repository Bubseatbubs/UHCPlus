execute store success score @s uhcp_initStatus run spreadplayers ~ ~ 0 32 true @s
execute if score @s uhcp_initStatus matches 1 run return fail
execute unless block ~ 62 ~ minecraft:water run return fail

execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
tp @s[scores={uhcp_initStatus=..61}] ~ 64 ~
