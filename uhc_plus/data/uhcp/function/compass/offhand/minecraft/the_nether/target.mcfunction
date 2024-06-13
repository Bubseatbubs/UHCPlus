# Commands at target player
execute if score %compass_bool uhcp_itemInv matches 1 run return fail
scoreboard players set %compass_bool uhcp_itemInv 1
setblock ~ 0 ~ minecraft:lodestone
data modify storage uhcp:compass Compass.Pos set from entity @s Pos
