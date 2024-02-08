# Compass wears out
execute at @s run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 1 1
tellraw @s {"text":"Your compass wore out.","color":"red"}
