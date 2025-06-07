# Augment tier
scoreboard players operation %random uhcp_aug_tier = %random_def uhcp_settings
function uhcp:settings/reset/augment

# Arrow limits
function uhcp:load/scores/arrow_limit

# Cobweb limit
scoreboard players operation %cobweb_limit uhcp_settings = %cobweb_limit_def uhcp_settings

# Border size
scoreboard players operation %border_size uhcp_settings = %border_size_def uhcp_settings

# Border countdown
scoreboard players operation %border_countdown uhcp_settings = %border_countdown_def uhcp_settings

# Border shrink speed
scoreboard players operation %border_shrink_speed uhcp_settings = %border_shrink_speed_def uhcp_settings

# Dimension countdown
function uhcp:load/scores/dimensions

# Number of Titans
scoreboard players operation %titans uhcp_settings = %titans_def uhcp_settings

# Soul apples
scoreboard players operation %soul_apples uhcp_settings = %soul_apples_def uhcp_settings

# Grace period countdown
function uhcp:load/scores/pvp

# Set default Ra stacks
scoreboard players operation %ra_stacks uhcp_settings = %ra_stacks_def uhcp_settings

# Patron augments
execute unless score %patrons uhcp_settings = %patrons_def uhcp_settings run function uhcp:settings/reset/patrons/toggle

# Night vision
scoreboard players operation %night_vision uhcp_settings = %night_vision_def uhcp_settings

# Ender pearl immunity
scoreboard players operation %ender_pearl uhcp_settings = %ender_pearl_def uhcp_settings

# Set default difficulty
scoreboard players operation %difficulty uhcp_settings = %difficulty_def uhcp_settings
function uhcp:settings/reset/difficulty

# Set default lava scoreboard values
execute unless score %lava_init uhcp_initStatus matches 1 run function uhcp:settings/reset/lava
function uhcp:load/scores/lava_countdown

# Set default team values
scoreboard players operation %team_size uhcp_settings = %team_size_def uhcp_settings
execute unless score %team uhcp_settings = %team_def uhcp_settings run function uhcp:settings/reset/team/team/toggle
execute unless score %players_select_teams uhcp_settings = %players_select_teams_def uhcp_settings run function uhcp:settings/reset/team/selection/toggle
scoreboard players operation %friendly_fire uhcp_settings = %friendly_fire_def uhcp_settings
execute unless score %friendly_fire uhcp_settings = %friendly_fire_def uhcp_settings run function uhcp:settings/reset/team/friendly_fire/toggle

# Auto-cook
scoreboard players operation %auto_cook uhcp_settings = %auto_cook_def uhcp_settings

# Auto-smelt
scoreboard players operation %auto_smelt uhcp_settings = %auto_smelt_def uhcp_settings

# Increased rates/drops of apples for leaves loot tables
scoreboard players operation %apple_leaves uhcp_settings = %apple_leaves_def uhcp_settings

# Remove enchanted golden apples from loot tables
scoreboard players operation %apple_limit uhcp_settings = %apple_limit_def uhcp_settings

# UHC Plus loot
scoreboard players operation %uhcp_loot uhcp_settings = %uhcp_loot_def uhcp_settings

# Enchantment reduction
scoreboard players operation %enchant_reduce uhcp_settings = %enchant_reduce_def uhcp_settings
execute unless score %enchant_reduce uhcp_settings = %enchant_reduce_def uhcp_settings run function uhcp:settings/reset/enchant_reduce
