execute if entity @s[team=red] run effect give @a[team=!red,distance=..16] minecraft:glowing 15 0
execute if entity @s[team=blue] run effect give @a[team=!blue,distance=..16] minecraft:glowing 15 0

scoreboard players add @s uhcp_game_time 300