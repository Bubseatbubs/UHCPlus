execute if entity @s[team=red] run give @s blaze_spawn_egg[entity_data={id:"minecraft:blaze",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Nostradamus"},DeathLootTable:""}] 12
execute if entity @s[team=blue] run give @s blaze_spawn_egg[entity_data={id:"minecraft:blaze",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"Balthazar"},DeathLootTable:""}] 12

execute if entity @s[team=red] run give @s minecraft:rabbit_spawn_egg[minecraft:entity_data={id:"minecraft:marker",Tags:["UHCP_Summon","UHCP_SpawnEgg","UHCP_SpawnRKillRabbit"]}] 10
execute if entity @s[team=blue] run give @s minecraft:rabbit_spawn_egg[minecraft:entity_data={id:"minecraft:marker",Tags:["UHCP_Summon","UHCP_SpawnEgg","UHCP_SpawnBKillRabbit"]}] 10

execute if entity @s[team=red] run give @s zoglin_spawn_egg[entity_data={id:"minecraft:zoglin",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Nostradamus"},DeathLootTable:""}] 8
execute if entity @s[team=blue] run give @s zoglin_spawn_egg[entity_data={id:"minecraft:zoglin",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"Balthazar"},DeathLootTable:""}] 8

execute if entity @s[team=red] run give @s vindicator_spawn_egg[entity_data={id:"minecraft:vindicator",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Nostradamus"},DeathLootTable:""}] 6
execute if entity @s[team=blue] run give @s vindicator_spawn_egg[entity_data={id:"minecraft:vindicator",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"Balthazar"},DeathLootTable:""}] 6

execute if entity @s[team=red] run give @s evoker_spawn_egg[entity_data={id:"minecraft:evoker",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Nostradamus"},Health:60f,DeathLootTable:""}] 4
execute if entity @s[team=blue] run give @s evoker_spawn_egg[entity_data={id:"minecraft:evoker",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"Balthazar"},Health:60f,DeathLootTable:""}] 4

execute if entity @s[team=red] run give @s ravager_spawn_egg[entity_data={id:"minecraft:ravager",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Buttercup"}}] 2
execute if entity @s[team=blue] run give @s ravager_spawn_egg[entity_data={id:"minecraft:ravager",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"SweetPea"}}] 2
tellraw @s ["",{"text":"You gained "},{"text":"an army of mobs","color":"yellow"},{"text":"!"}]