# Augment tier
scoreboard players operation %random uhcp_aug_tier = %random_def ssiege_settings
function uhcp:settings/reset/ssiege/augment

# Arrow limits
function uhcp:load/scores/ssiege/arrow_limit

# Dimension countdown
function uhcp:load/scores/ssiege/dimensions

# Soul apples
scoreboard players operation %soul_apples uhcp_settings = %soul_apples_def ssiege_settings

# Grace period countdown
function uhcp:load/scores/ssiege/pvp

# Patron augments
execute unless score %patrons uhcp_settings = %patrons_def ssiege_settings run function uhcp:settings/reset/ssiege/patrons

# Night vision
scoreboard players operation %night_vision uhcp_settings = %night_vision_def ssiege_settings

# Ender pearl immunity
scoreboard players operation %ender_pearl uhcp_settings = %ender_pearl_def ssiege_settings

# Set default difficulty
scoreboard players operation %difficulty uhcp_settings = %difficulty_def ssiege_settings
function uhcp:settings/reset/difficulty

# Set default team values
execute unless score %players_select_teams uhcp_settings = %players_select_teams_def ssiege_settings run function uhcp:settings/reset/ssiege/team/selection
scoreboard players operation %friendly_fire uhcp_settings = %friendly_fire_def ssiege_settings
execute unless score %friendly_fire uhcp_settings = %friendly_fire_def ssiege_settings run function uhcp:settings/reset/team/friendly_fire/toggle

# Auto-cook
scoreboard players operation %auto_cook uhcp_settings = %auto_cook_def ssiege_settings

# Auto-smelt
scoreboard players operation %auto_smelt uhcp_settings = %auto_smelt_def ssiege_settings

# Increased rates/drops of apples for leaves loot tables
scoreboard players operation %apple_leaves uhcp_settings = %apple_leaves_def ssiege_settings

# Remove enchanted golden apples from loot tables
scoreboard players operation %apple_limit uhcp_settings = %apple_limit_def ssiege_settings

# UHC Plus loot
scoreboard players operation %uhcp_loot uhcp_settings = %uhcp_loot_def ssiege_settings

# Enchantment reduction
scoreboard players operation %enchant_reduce uhcp_settings = %enchant_reduce_def ssiege_settings
execute unless score %enchant_reduce uhcp_settings = %enchant_reduce_def ssiege_settings run function uhcp:settings/reset/enchant_reduce
