# Grant effects
effect give @s minecraft:strength 1500 0 false
effect give @s minecraft:resistance 1500 0 false
effect clear @s minecraft:nausea

# Clear effects if already time
scoreboard players set @s uhcp_game_time 33600
execute if score %time uhcp_game_time matches 33600.. run return run function uhcp:augments/effects/silver/drunkenstupor/cure

execute at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1
