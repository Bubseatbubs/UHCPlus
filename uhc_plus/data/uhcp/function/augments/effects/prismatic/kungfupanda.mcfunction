# Suspicious Bamboo Sugar
execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:consumables/suspicious_bamboo_sugar
execute if score @s uhcp_lava_currentLayers matches 0 run function uhcp:augments/effects/prismatic/kungfupanda/loot

tellraw @s [{"text":"You received ","color":"white"},{"text":"Suspicious Bamboo Sugar","color":"light_purple"},{"text":" from ","color":"white"},{"text":"Kung-Fu Panda","color":"gray"},{"text":"!","color":"white"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players set @s uhcp_game_time -1
