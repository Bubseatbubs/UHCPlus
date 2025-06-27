# Groovy Disc
scoreboard players set @s uhcp_leave 1000
execute store result score @s uhcp_lava_currentLayers run loot give @s loot uhcp:consumables/groovy_disc
execute if score @s uhcp_lava_currentLayers matches 0 run function uhcp:augments/effects/silver/raveparty/loot

tellraw @s [{"text":"You received a ","color":"white"},{"text":"Groovy Disc","color":"light_purple"},{"text":" from ","color":"white"},{"text":"Rave Party","color":"gray"},{"text":"!","color":"white"}]
playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1 1

scoreboard players reset @s uhcp_leave
scoreboard players set @s uhcp_game_time -1
