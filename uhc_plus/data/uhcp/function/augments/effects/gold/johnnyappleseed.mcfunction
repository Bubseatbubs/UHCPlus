# Initial apples
give @s minecraft:apple 6

# Apple delay
scoreboard players set @s uhcp_game_time 2400
execute if score %time uhcp_game_time matches 2400.. run function uhcp:augments/effects/gold/johnnyappleseed/give
