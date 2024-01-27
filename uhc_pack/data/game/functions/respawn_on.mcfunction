#Respawn on

scoreboard players set respawn status 1
execute in minecraft:overworld run gamerule keepInventory true
execute in minecraft:the_end run gamerule keepInventory true
execute in minecraft:the_nether run gamerule keepInventory true

title @a title {"text":"Respawns On","color":"green"}
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 1000000 1 1
