# Commands at target player
execute if score %uhcp_compassB uhcp_itemInv matches 1 run return fail
scoreboard players set %uhcp_compassB uhcp_itemInv 1
setblock ~ 0 ~ minecraft:lodestone
data modify storage minecraft:uhcp_compass Compass.Pos set from entity @s Pos
