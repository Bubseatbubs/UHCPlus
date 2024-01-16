# Stop raising lava
scoreboard players set %uhcp_lavaStart uhcp_initStatus 0
tellraw @a [{"text":"Lava","color":"red"},{"text":" stopped rising.","color":"yellow"}]
execute as @a at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.75 1
