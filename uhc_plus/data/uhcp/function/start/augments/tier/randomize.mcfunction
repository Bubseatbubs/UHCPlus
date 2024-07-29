# Randomize augment tier
execute store result score %tier uhcp_aug_tier run random value 0..99
execute if score %tier uhcp_aug_tier matches 0..24 run return 0
execute if score %tier uhcp_aug_tier matches 25..79 run return 1
return 2
