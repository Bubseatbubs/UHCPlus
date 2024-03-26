# Calculate player's height
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute if score %lava uhcp_lava_currentHeight >= @s uhcp_initStatus run function uhcp:lava/in_lava/clear

advancement revoke @s only uhcp:in_lava
