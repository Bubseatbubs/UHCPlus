# Randomize augment tier
execute store result score %tier uhcp_aug_tier run random value 0..99

# Current Odds: 70% Gold, 30% Prismatic
execute if score %tier uhcp_aug_tier matches 0..69 run return 1
return 2
