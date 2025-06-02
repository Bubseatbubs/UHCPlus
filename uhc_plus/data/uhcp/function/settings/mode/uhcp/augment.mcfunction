# Set augment tier
execute if score %random uhcp_aug_tier matches 1 run return run scoreboard players reset %tier uhcp_aug_tier
scoreboard players operation %tier uhcp_aug_tier = %tier_store uhcp_settings
