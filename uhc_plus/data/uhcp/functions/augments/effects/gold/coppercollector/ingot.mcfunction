execute store result score %copper uhcp_aug_count run clear @s copper_ingot 8
execute if score %copper uhcp_aug_count matches ..2 run return 0
give @s gold_ingot

execute store result score %copper uhcp_aug_count run clear @s copper_ingot 0
execute if score %copper uhcp_aug_count matches ..2 run return 0
function uhcp:augments/effects/gold/coppercollector/ingot