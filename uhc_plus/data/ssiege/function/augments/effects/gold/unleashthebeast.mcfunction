execute if entity @s[team=red] run give @s ravager_spawn_egg[entity_data={id:"minecraft:ravager",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Buttercup"}}] 1
execute if entity @s[team=blue] run give @s ravager_spawn_egg[entity_data={id:"minecraft:ravager",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"SweetPea"}}] 1

# Adds 15 minutes to next proc
scoreboard players add @s uhcp_game_time 18000