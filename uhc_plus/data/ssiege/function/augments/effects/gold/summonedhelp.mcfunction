execute if entity @s[team=red] run give @s evoker_spawn_egg[entity_data={id:"minecraft:evoker",Glowing:1b,Team:"red",CustomName:{"color":"red","text":"Nostradamus"}}] 1
execute if entity @s[team=blue] run give @s evoker_spawn_egg[entity_data={id:"minecraft:evoker",Glowing:1b,Team:"blue",CustomName:{"color":"blue","text":"Balthazar"}}] 1

# Adds 10 minutes to next proc
scoreboard players add @s uhcp_game_time 12000