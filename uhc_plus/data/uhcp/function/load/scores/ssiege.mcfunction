# Augment tier
execute unless score %random uhcp_aug_tier = %random uhcp_aug_tier run scoreboard players operation %random uhcp_aug_tier = %random_def ssiege_settings
execute unless score %tier uhcp_aug_tier = %tier uhcp_aug_tier if score %random uhcp_aug_tier matches 0 run scoreboard players operation %tier uhcp_aug_tier = %tier_def ssiege_settings

# Arrow limits
execute unless score %arrow_limit uhcp_arrowCount = %arrow_limit uhcp_arrowCount run function uhcp:load/scores/ssiege/arrow_limit

# Border size
execute unless score %border_size uhcp_settings = %border_size uhcp_settings run scoreboard players operation %border_size uhcp_settings = %border_size_def ssiege_settings

# Dimension countdown
execute unless score %dimension uhcp_settings = %dimension uhcp_settings run function uhcp:load/scores/ssiege/dimensions

# Soul apples
execute unless score %soul_apples uhcp_settings = %soul_apples uhcp_settings run scoreboard players operation %soul_apples uhcp_settings = %soul_apples_def ssiege_settings

# PvP countdown
execute unless score %pvp uhcp_settings = %pvp uhcp_settings run function uhcp:load/scores/ssiege/pvp

# Friendly fire
execute unless score %friendly_fire uhcp_settings = %friendly_fire uhcp_settings run scoreboard players operation %friendly_fire uhcp_settings = %friendly_fire_def ssiege_settings

# Players select teams
execute unless score %players_select_teams uhcp_settings = %players_select_teams uhcp_settings run scoreboard players operation %players_select_teams uhcp_settings = %players_select_teams_def ssiege_settings

# Patron augments
execute unless score %patrons uhcp_settings = %patrons uhcp_settings run scoreboard players operation %patrons uhcp_settings = %patrons_def ssiege_settings

# Difficulty
execute unless score %difficulty uhcp_settings = %difficulty uhcp_settings run scoreboard players operation %difficulty uhcp_settings = %difficulty_def ssiege_settings

# Night vision
execute unless score %night_vision uhcp_settings = %night_vision uhcp_settings run scoreboard players operation %night_vision uhcp_settings = %night_vision_def ssiege_settings

# Ender pearl immunity
execute unless score %ender_pearl uhcp_settings = %ender_pearl uhcp_settings run scoreboard players operation %ender_pearl uhcp_settings = %ender_pearl_def ssiege_settings

# Auto-cook
execute unless score %auto_cook uhcp_settings = %auto_cook uhcp_settings run scoreboard players operation %auto_cook uhcp_settings = %auto_cook_def ssiege_settings

# Auto-smelt
execute unless score %auto_smelt uhcp_settings = %auto_smelt uhcp_settings run scoreboard players operation %auto_smelt uhcp_settings = %auto_smelt_def ssiege_settings

# Increased rates/drops of apples for leaves loot tables
execute unless score %apple_leaves uhcp_settings = %apple_leaves uhcp_settings run scoreboard players operation %apple_leaves uhcp_settings = %apple_leaves_def ssiege_settings

# Remove enchanted golden apples from loot tables
execute unless score %apple_limit uhcp_settings = %apple_limit uhcp_settings run scoreboard players operation %apple_limit uhcp_settings = %apple_limit_def ssiege_settings

# UHC Plus loot
execute unless score %uhcp_loot uhcp_settings = %uhcp_loot uhcp_settings run scoreboard players operation %uhcp_loot uhcp_settings = %uhcp_loot_def ssiege_settings

# Enchantment reduction
execute unless score %enchant_reduce uhcp_settings = %enchant_reduce uhcp_settings run scoreboard players operation %enchant_reduce uhcp_settings = %enchant_reduce_def ssiege_settings
