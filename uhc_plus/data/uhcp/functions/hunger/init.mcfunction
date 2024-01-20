tellraw @s [{"text":"Hunger","color":"green"},{"text":" will be soon be inflicted... hit other players to delay the effect!","color":"gray"}]
playsound minecraft:block.note_block.cow_bell player @s ~ ~ ~ 1 1 1
scoreboard players set %uhcp_hungerInit uhcp_initStatus 1 
scoreboard players reset @a hunger