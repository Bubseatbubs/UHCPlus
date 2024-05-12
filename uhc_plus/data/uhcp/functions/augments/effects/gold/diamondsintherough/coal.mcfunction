clear @s minecraft:coal 1
give @s minecraft:diamond

execute store result score %coal uhcp_aug_count run clear @s minecraft:coal 0
execute if score %coal uhcp_aug_count matches 1.. run function uhcp:augments/effects/gold/diamondsintherough/coal
