# Randomize augment tier
execute store result score %tier uhcp_aug_tier run random value 0..99
execute if score %tier uhcp_aug_tier matches 0..74 run return 1
return 2