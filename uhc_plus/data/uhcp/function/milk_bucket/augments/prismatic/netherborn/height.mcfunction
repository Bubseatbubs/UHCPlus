# Compare player height against lava height
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute if score %lava uhcp_lava_currentHeight >= @s uhcp_initStatus run effect clear @s minecraft:fire_resistance
