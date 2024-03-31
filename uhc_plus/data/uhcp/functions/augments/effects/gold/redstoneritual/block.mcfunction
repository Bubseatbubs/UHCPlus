execute store result score %redstone uhcp_aug_count run clear @s redstone_block 8
execute if score %redstone uhcp_aug_count matches ..2 run return 0
# insert absorption hearts here

execute store result score %redstone uhcp_aug_count run clear @s redstone_block 0
execute if score %redstone uhcp_aug_count matches ..2 run return 0
function uhcp:augments/effects/gold/redstoneritual/block