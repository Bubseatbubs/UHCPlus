give @s minecraft:gold_ingot 1
scoreboard players remove @s uhcp_initStatus 1
execute if score @s uhcp_initStatus matches 1.. run function uhcp:augments/effects/prismatic/midastouch/ores/copper_block
