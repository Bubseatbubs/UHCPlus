give @s minecraft:gold_block 1
scoreboard players remove @s uhcp_initStatus 1
execute if score @s uhcp_initStatus matches 1.. run function uhcp:augments/effects/prismatic/midastouch/ores/netherite
