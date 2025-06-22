execute if entity @s[team=red] run give @s blaze_spawn_egg[entity_data={id:"minecraft:blaze",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Nostradamus"},DeathLootTable:""}] 12
execute if entity @s[team=blue] run give @s blaze_spawn_egg[entity_data={id:"minecraft:blaze",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"Balthazar"},DeathLootTable:""}] 12

execute if entity @s[team=red] run give @s rabbit_spawn_egg[entity_data={id:"minecraft:rabbit",Glowing:1b,CustomNameVisible:1b,Team:"red",PersistenceRequired:1b,Health:45f,RabbitType:99,CustomName:{"bold":true,"color":"dark_red","shadow_color":16777215,"text":"Killler Rabbit"},attributes:[{id:"minecraft:max_health",base:30},{id:attack_damage,base:12},{id:"minecraft:scale",base:2},{id:"minecraft:movement_speed",base:.5}]}] 10
execute if entity @s[team=blue] run give @s rabbit_spawn_egg[entity_data={id:"minecraft:rabbit",Glowing:1b,CustomNameVisible:1b,Team:"blue",PersistenceRequired:1b,Health:45f,RabbitType:99,CustomName:{"bold":true,"color":"dark_blue","shadow_color":16777215,"text":"Killler Rabbit"},attributes:[{id:"minecraft:max_health",base:30},{id:attack_damage,base:12},{id:"minecraft:scale",base:2},{id:"minecraft:movement_speed",base:.5}]}] 10

execute if entity @s[team=red] run give @s zoglin_spawn_egg[entity_data={id:"minecraft:zoglin",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Nostradamus"},DeathLootTable:""}] 8
execute if entity @s[team=blue] run give @s zoglin_spawn_egg[entity_data={id:"minecraft:zoglin",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"Balthazar"},DeathLootTable:""}] 8

execute if entity @s[team=red] run give @s piglin_brute_spawn_egg[entity_data={id:"minecraft:piglin_brute",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Nostradamus"},DeathLootTable:""}] 6
execute if entity @s[team=blue] run give @s piglin_brute_spawn_egg[entity_data={id:"minecraft:piglin_brute",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"Balthazar"},DeathLootTable:""}] 6

execute if entity @s[team=red] run give @s evoker_spawn_egg[entity_data={id:"minecraft:evoker",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Nostradamus"},Health:60f,DeathLootTable:""}] 4
execute if entity @s[team=blue] run give @s evoker_spawn_egg[entity_data={id:"minecraft:evoker",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"Balthazar"},Health:60f,DeathLootTable:""}] 4

execute if entity @s[team=red] run give @s ravager_spawn_egg[entity_data={id:"minecraft:ravager",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Buttercup"}}] 2
execute if entity @s[team=blue] run give @s ravager_spawn_egg[entity_data={id:"minecraft:ravager",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"SweetPea"}}] 2
tellraw @s ["",{"text":"You gained "},{"text":"an army of mobs","color":"yellow"},{"text":"!"}]