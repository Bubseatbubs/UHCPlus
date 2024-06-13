# Store lowest player height as score
execute store result score @s uhcp_lava_currentHeight run data get entity @s Pos[1]
execute if score @s uhcp_lava_currentHeight < %lava_secondary uhcp_lava_height run scoreboard players operation %lava_secondary uhcp_lava_height = @s uhcp_lava_currentHeight
