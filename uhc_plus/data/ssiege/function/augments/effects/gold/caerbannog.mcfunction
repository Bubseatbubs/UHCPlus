# Gives correct rabbit according to team
execute if entity @s[team=red] run give @s minecraft:rabbit_spawn_egg[minecraft:entity_data={id:"minecraft:marker",Tags:["UHCP_Summon","UHCP_SpawnEgg","UHCP_SpawnRKillRabbit"]}] 1
execute if entity @s[team=blue] run give @s minecraft:rabbit_spawn_egg[minecraft:entity_data={id:"minecraft:marker",Tags:["UHCP_Summon","UHCP_SpawnEgg","UHCP_SpawnBKillRabbit"]}] 1

# Adds 5 minutes to next proc
scoreboard players add @s uhcp_game_time 6000