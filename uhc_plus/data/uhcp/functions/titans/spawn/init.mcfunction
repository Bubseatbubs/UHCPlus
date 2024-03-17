kill @e[tag=UHCP_TitanSpawn]
summon marker 0 64 0 {Tags:["UHCP_TitanSpawn"]}
execute as @e[tag=UHCP_TitanSpawn] store result score @s uhcp_t_count run random value 1..2
execute as @e[tag=UHCP_TitanSpawn] run function uhcp:titans/spawn/position
execute as @e[tag=UHCP_TitanSpawn] at @s run function uhcp:titans/spawn/altar
execute as @e[tag=UHCP_TitanSpawn] at @s as @e[type=!#uhcp:inanimate_mobs,distance=..8] at @s if block ~ ~ ~ barrier run effect give @s resistance 1 5 true
execute as @e[tag=UHCP_TitanSpawn] at @s as @e[type=!#uhcp:inanimate_mobs,distance=..8] at @s if block ~ ~ ~ barrier run tp @s ~ ~8 ~