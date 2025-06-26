give @s minecraft:gold_ingot 8

scoreboard players set @s uhcp_game_time 4800
execute if score %time uhcp_game_time matches 4800.. run function uhcp:augments/effects/silver/dripeconomyi/give
