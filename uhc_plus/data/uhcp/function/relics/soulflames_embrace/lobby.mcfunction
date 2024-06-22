# Version of relic that runs in lobby
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute unless score @s uhcp_initStatus matches 273..282 run return fail

tag @s add UHCP_SoulflameEmbrace
playsound minecraft:block.beacon.power_select master @a[distance=..6] ~ ~ ~ 1 1 0.75
particle minecraft:soul_fire_flame ~ ~2 ~ 0.35 0.5 0.35 0.01 30 normal
particle minecraft:soul ~ ~2 ~ 0.35 0.5 0.35 0.01 10 normal
