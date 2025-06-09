give @s minecraft:gold_ingot 8

scoreboard players set @s uhcp_game_time 1200
execute if score %time uhcp_game_time matches 1200.. run function uhcp:augments/effects/gold/dripeconomyii/give
