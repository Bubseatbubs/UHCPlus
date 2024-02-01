# Calculate player's height
execute store result score @s uhcp_lavaCurrentHeight run data get entity @s Pos[2]
execute if score %uhcp_lava uhcp_lavaCurrentHeight >= @s uhcp_lavaCurrentHeight run function uhcp:lava/in_lava/clear
