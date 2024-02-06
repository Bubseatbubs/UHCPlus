# Compass wears out
execute at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 0.75 1
tellraw @s {"text":"Your compass wore out.","color":"red"}
