effect give @s minecraft:haste infinite 2 true
effect clear @s minecraft:mining_fatigue
execute at @s run playsound block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
