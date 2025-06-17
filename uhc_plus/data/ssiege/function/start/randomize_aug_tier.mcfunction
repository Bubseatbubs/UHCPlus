# Randomize augment tier
execute store result score %tier uhcp_aug_tier run random value 0..9
execute if score %tier uhcp_aug_tier matches 0..7 run return 1
return 2