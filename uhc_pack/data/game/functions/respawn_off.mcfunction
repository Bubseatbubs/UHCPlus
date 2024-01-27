#Respawn off

scoreboard players set respawn status 0
execute in minecraft:overworld run gamerule keepInventory false
execute in minecraft:the_end run gamerule keepInventory false
execute in minecraft:the_nether run gamerule keepInventory false
title @a title {"text":"Respawns Off","color":"red"}
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 0 1
