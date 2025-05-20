# Magic Trick
execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:consumables/magic_trick
execute if score @s uhcp_lava_currentLayers matches 0 run function uhcp:augments/effects/silver/bunnymagic/loot

tellraw @s [{"text":"You received a ","color":"white"},{"text":"Magic Trick","color":"light_purple"},{"text":" from ","color":"white"},{"text":"Bunny Magic","color":"gray"},{"text":"!","color":"white"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
