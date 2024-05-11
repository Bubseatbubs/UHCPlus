execute store result score %coal uhcp_aug_count run clear @s minecraft:coal 1
execute if score %coal uhcp_aug_count matches 0 run return 0
give @s minecraft:diamond

execute store result score %coal uhcp_aug_count run clear @s minecraft:coal 0
execute if score %coal uhcp_aug_count matches 0 run return 0
function uhcp:augments/effects/gold/diamondsintherough/coal