# Set augment tier
execute if score %random_def uhcp_settings matches 1 run return run scoreboard players reset %tier uhcp_aug_tier
scoreboard players operation %tier uhcp_aug_tier = %tier_def uhcp_settings
