effect give @s minecraft:strength 1500 0 false
effect give @s minecraft:resistance 1500 0 false
effect clear @s minecraft:nausea

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players add @s uhcp_game_time 30000
execute if score %time uhcp_game_time >= @s uhcp_game_time run function uhcp:augments/effects/silver/drunkenstupor/cure
