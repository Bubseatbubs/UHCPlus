execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:consumables/wild_feather
execute if score @s uhcp_lava_currentLayers matches 0 run function uhcp:augments/effects/prismatic/featherstorm

scoreboard players add @s uhcp_game_time 6000
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/prismatic/featherstorm/give
