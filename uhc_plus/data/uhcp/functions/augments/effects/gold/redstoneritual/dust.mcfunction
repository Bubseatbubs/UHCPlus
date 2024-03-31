execute store result score %redstone uhcp_aug_count run clear @s redstone 8
execute if score %redstone uhcp_aug_count matches ..2 run return 0
# insert gaining absortion hearts here

execute store result score %redstone uhcp_aug_count run clear @s redstone 0
execute if score %redstone uhcp_aug_count matches ..2 run return 0
function uhcp:augments/effects/gold/redstoneritual/dust