# Spawn only adult variants of entities
kill @s
execute as @s[tag=UHCP_SpawnCCat] summon minecraft:cat run return run function uhcp:entity/spawn_egg/crazy_cat
execute as @s[tag=UHCP_SpawnMBF] summon minecraft:wolf run return run function uhcp:entity/spawn_egg/best_friend
execute as @s[tag=UHCP_SpawnCow] run return run summon minecraft:cow ~ ~ ~
execute as @s[tag=UHCP_SpawnHorse] run return run summon minecraft:horse ~ ~ ~
execute as @s[tag=UHCP_SpawnVillager] run return run summon minecraft:villager ~ ~ ~
execute as @s[tag=UHCP_SpawnSniffer] run return run summon minecraft:sniffer ~ ~ ~

# Sniffer Siege
execute as @s[tag=UHCP_SpawnBKillRabbit] run return run summon minecraft:rabbit ~ ~ ~ {Glowing:true,CustomNameVisible:true,Team:"blue",PersistenceRequired:true,Health:45f,RabbitType:99,CustomName:{"bold":true,"color":"dark_blue","shadow_color":16777215,"text":"Killler Rabbit"},attributes:[{id:"minecraft:max_health",base:30},{id:attack_damage,base:12},{id:"minecraft:scale",base:2},{id:"minecraft:movement_speed",base:.5}]}
execute as @s[tag=UHCP_SpawnRKillRabbit] run return run summon minecraft:rabbit ~ ~ ~ {Glowing:true,CustomNameVisible:true,Team:"red",PersistenceRequired:true,Health:45f,RabbitType:99,CustomName:{"bold":true,"color":"dark_red","shadow_color":16777215,"text":"Killler Rabbit"},attributes:[{id:"minecraft:max_health",base:30},{id:attack_damage,base:12},{id:"minecraft:scale",base:2},{id:"minecraft:movement_speed",base:.5}]}
execute as @s[tag=UHCP_SpawnSnifflet] run summon minecraft:sniffer ~ ~ ~ {Tags:["babysitting"],attributes:[{id:"minecraft:scale",base:.5}]}
