execute store result score %coal uhcp_aug_count run clear @s coal_block 1
execute if score %coal uhcp_aug_count matches 0 run return 0
give @s diamond_block

execute store result score %coal uhcp_aug_count run clear @s coal_block 0
execute if score %coal uhcp_aug_count matches 0 run return 0
function uhcp:augments/effects/gold/diamondsintherough/block