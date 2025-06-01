# Gives correct rabbit accordidn gto team
execute if entity @s[team=red] run give @s rabbit_spawn_egg[entity_data={id:"minecraft:rabbit",Glowing:1b,CustomNameVisible:1b,Team:"red",PersistenceRequired:1b,Health:35f,RabbitType:99,CustomName:{"bold":true,"color":"dark_red","shadow_color":16777215,"text":"Killler Rabbit"},attributes:[{id:"minecraft:max_health",base:30},{id:attack_damage,base:12},{id:"minecraft:scale",base:2}]}] 1
execute if entity @s[team=blue] run give @s rabbit_spawn_egg[entity_data={id:"minecraft:rabbit",Glowing:1b,CustomNameVisible:1b,Team:"blue",PersistenceRequired:1b,Health:35f,RabbitType:99,CustomName:{"bold":true,"color":"dark_blue","shadow_color":16777215,"text":"Killler Rabbit"},attributes:[{id:"minecraft:max_health",base:30},{id:attack_damage,base:12},{id:"minecraft:scale",base:2}]}] 1

# Adds 5 minutes to next proc
scoreboard players add @s uhcp_game_time 6000