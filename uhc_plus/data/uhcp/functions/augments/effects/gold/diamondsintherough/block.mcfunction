clear @s minecraft:coal_block 1
give @s minecraft:diamond_block

execute store result score %coal uhcp_aug_count run clear @s minecraft:coal_block 0
execute if score %coal uhcp_aug_count matches 1.. run function uhcp:augments/effects/gold/diamondsintherough/block
