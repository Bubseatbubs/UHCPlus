give @s minecraft:diamond_block 1
scoreboard players remove @s uhcp_initStatus 1
execute if score @s uhcp_initStatus matches 1.. run function uhcp:augments/effects/gold/diamondsintherough/block
