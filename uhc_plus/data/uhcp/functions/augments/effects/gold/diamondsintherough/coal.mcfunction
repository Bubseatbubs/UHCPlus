execute store result score %coal uhcp_aug_count run clear @s coal 3
execute if score %coal uhcp_aug_count matches ..2 run return 0
give @s diamond

execute store result score %coal uhcp_aug_count run clear @s coal 0
execute if score %coal uhcp_aug_count matches ..2 run return 0
function uhcp:augments/effects/gold/diamondsintherough/coal