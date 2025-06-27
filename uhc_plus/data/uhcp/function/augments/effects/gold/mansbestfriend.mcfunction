give @s minecraft:wolf_spawn_egg[minecraft:custom_data={uhcp_best_friend:true},minecraft:entity_data={id:"minecraft:marker",Tags:["UHCP_Summon","UHCP_SpawnEgg","UHCP_SpawnMBF"]}] 2
give @s minecraft:chicken 12

scoreboard players set @s uhcp_game_time 36000
execute if score %time uhcp_game_time matches 36000.. run function uhcp:augments/effects/gold/mansbestfriend/identify
