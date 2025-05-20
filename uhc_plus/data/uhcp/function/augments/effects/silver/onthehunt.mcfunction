execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:player_compass
execute if score @s uhcp_lava_currentLayers matches 0 run function uhcp:augments/effects/silver/onthehunt/loot

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
