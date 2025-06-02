# Upon uhcp:start
# Store previous mode's settings scores
function uhcp:settings/mode/store

# Set game mode
scoreboard players set %mode uhcp_settings 0

# Load current mode's settings scores
execute unless score %night_vision_store uhcp_settings = %night_vision_store uhcp_settings run return run function uhcp:settings/reset/uhcp

# Augment tier
scoreboard players operation %random uhcp_aug_tier = %random_store uhcp_settings
function uhcp:settings/mode/uhcp/augment

# Arrow limits
scoreboard players operation %arrow_limit uhcp_settings = %arrow_limit_store uhcp_settings
scoreboard players operation %arrow_limit149 uhcp_settings = %arrow_limit149_store uhcp_settings
scoreboard players operation %arrow_limit5 uhcp_settings = %arrow_limit5_store uhcp_settings
scoreboard players operation %arrow_limit201 uhcp_settings = %arrow_limit201_store uhcp_settings

# Border size
scoreboard players operation %border_size uhcp_settings = %border_size_store uhcp_settings

# Border countdown
scoreboard players operation %border_countdown uhcp_settings = %border_countdown_store uhcp_settings

# Border shrink speed
scoreboard players operation %border_shrink_speed uhcp_settings = %border_shrink_speed_store uhcp_settings

# Dimension countdown
scoreboard players operation %dimension uhcp_settings = %dimension_store uhcp_settings
scoreboard players operation %dimension_retain uhcp_settings = %dimension_store uhcp_settings

# Number of Titans
scoreboard players operation %titans uhcp_settings = %titans_store uhcp_settings

# Soul apples
scoreboard players operation %soul_apples uhcp_settings = %soul_apples_store uhcp_settings

# Grace period countdown
scoreboard players operation %pvp uhcp_settings = %pvp_store uhcp_settings
scoreboard players operation %pvp_retain uhcp_settings = %pvp_store uhcp_settings

# Ra stacks
scoreboard players operation %ra_stacks uhcp_settings = %ra_stacks_store uhcp_settings

# Patron augments
scoreboard players operation %patrons uhcp_settings = %patrons_store uhcp_settings

# Night vision
scoreboard players operation %night_vision uhcp_settings = %night_vision_store uhcp_settings

# Ender pearl immunity
scoreboard players operation %ender_pearl uhcp_settings = %ender_pearl_store uhcp_settings

# Difficulty
scoreboard players operation %difficulty uhcp_settings = %difficulty_store uhcp_settings
function uhcp:settings/reset/difficulty

# Rising lava
execute unless score %lava_init uhcp_initStatus matches 1 run function uhcp:settings/mode/uhcp/lava
scoreboard players operation %lava_countdown uhcp_settings = %lava_countdown_store uhcp_settings
scoreboard players operation %lava_countdown_retain uhcp_settings = %lava_countdown_store uhcp_settings

# Team
scoreboard players operation %team_size uhcp_settings = %team_size_store uhcp_settings
scoreboard players operation %team uhcp_settings = %team_store uhcp_settings
scoreboard players operation %players_select_teams uhcp_settings = %players_select_teams_store uhcp_settings
scoreboard players operation %friendly_fire uhcp_settings = %friendly_fire_store uhcp_settings
function uhcp:settings/reset/team/friendly_fire/toggle

# Auto-cook
scoreboard players operation %auto_cook uhcp_settings = %auto_cook_store uhcp_settings

# Auto-smelt
scoreboard players operation %auto_smelt uhcp_settings = %auto_smelt_store uhcp_settings

# Increased rates/drops of apples for leaves loot tables
scoreboard players operation %apple_leaves uhcp_settings = %apple_leaves_store uhcp_settings

# Remove enchanted golden apples from loot tables
scoreboard players operation %apple_limit uhcp_settings = %apple_limit_store uhcp_settings

# UHC Plus loot
scoreboard players operation %uhcp_loot uhcp_settings = %uhcp_loot_store uhcp_settings

# Enchantment reduction
scoreboard players operation %enchant_reduce uhcp_settings = %enchant_reduce_store uhcp_settings
function uhcp:settings/reset/enchant_reduce
