# TODO - make spawn eggs utilize markers (always adults)
give @s minecraft:cat_spawn_egg[minecraft:custom_data={uhcp_crazy_cat:true},minecraft:entity_data={id:"minecraft:marker",Tags:["UHCP_Summon","UHCP_SpawnEgg","UHCP_SpawnCCat"]}] 2
give @s minecraft:cod 32

scoreboard players set @s uhcp_game_time 1200
execute if score %time uhcp_game_time matches 1200.. run function uhcp:augments/effects/silver/crazycatlady/count
