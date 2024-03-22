kill @e[tag=UHCP_TitanSpawn]
function uhcp:titans/spawn/spawn_marker
execute as @e[tag=UHCP_TitanSpawn] run function uhcp:titans/spawn/position
execute as @e[tag=UHCP_TitanSpawn] at @s run function uhcp:titans/spawn/altar
execute as @e[tag=UHCP_TitanSpawn] at @s as @e[type=!#uhcp:inanimate_mobs,distance=..8] at @s if block ~ ~ ~ barrier run effect give @s resistance 1 5 true
execute as @e[tag=UHCP_TitanSpawn] at @s as @e[type=!#uhcp:inanimate_mobs,distance=..8] at @s if block ~ ~ ~ barrier run tp @s ~ ~8 ~
