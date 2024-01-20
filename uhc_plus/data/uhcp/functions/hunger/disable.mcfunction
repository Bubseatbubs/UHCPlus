tellraw @s [{"text":"Hunger","color":"green"},{"text":" effect was disabled!","color":"gray"}]
playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 1 1
scoreboard players set %uhcp_hungerInit uhcp_initStatus 0 
scoreboard players set %hunger_timer uhcp_gameTime 0
scoreboard players reset @a hunger