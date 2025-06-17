execute if entity @s[team=red] run give @s ravager_spawn_egg[entity_data={id:"minecraft:ravager",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Buttercup"},Health:65f,attributes:[{id:"minecraft:attack_damage",base:9},{id:"minecraft:max_health",base:65},{id:"minecraft:movement_speed",base:0.52}]}] 1
execute if entity @s[team=blue] run give @s ravager_spawn_egg[entity_data={id:"minecraft:ravager",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"SweetPea"},Health:65f,attributes:[{id:"minecraft:attack_damage",base:9},{id:"minecraft:max_health",base:65},{id:"minecraft:movement_speed",base:0.52}]}] 1

# Adds 15 minutes to next proc
scoreboard players add @s uhcp_game_time 18000