# Upon ssiege:start
# Store previous mode's settings scores
function uhcp:settings/mode/store

# Set game mode
scoreboard players set %mode uhcp_settings 1

# Load current mode's settings scores
execute unless score %night_vision ssiege_settings = %night_vision ssiege_settings run return run function uhcp:settings/reset/ssiege

# Augment tier
scoreboard players operation %random uhcp_aug_tier = %random ssiege_settings
function uhcp:settings/mode/ssiege/augment

# Arrow limits
scoreboard players operation %arrow_limit uhcp_arrowCount = %arrow_limit ssiege_settings
scoreboard players operation %arrow_limit149 uhcp_arrowCount = %arrow_limit149 ssiege_settings
scoreboard players operation %arrow_limit5 uhcp_arrowCount = %arrow_limit5 ssiege_settings
scoreboard players operation %arrow_limit201 uhcp_arrowCount = %arrow_limit201 ssiege_settings

# Cobweb limit
scoreboard players operation %cobweb_limit uhcp_settings = %cobweb_limit ssiege_settings

# Border size
scoreboard players operation %border_size uhcp_settings = %border_size ssiege_settings

# Dimension countdown
scoreboard players operation %dimension uhcp_settings = %dimension ssiege_settings
scoreboard players operation %dimension_retain uhcp_settings = %dimension ssiege_settings

# Soul apples
scoreboard players operation %soul_apples uhcp_settings = %soul_apples ssiege_settings

# Grace period countdown
scoreboard players operation %pvp uhcp_settings = %pvp ssiege_settings
scoreboard players operation %pvp_retain uhcp_settings = %pvp ssiege_settings

# Patron augments
scoreboard players operation %patrons uhcp_settings = %patrons ssiege_settings

# Night vision
scoreboard players operation %night_vision uhcp_settings = %night_vision ssiege_settings

# Ender pearl immunity
scoreboard players operation %ender_pearl uhcp_settings = %ender_pearl ssiege_settings

# Difficulty
scoreboard players operation %difficulty uhcp_settings = %difficulty ssiege_settings
function uhcp:settings/reset/difficulty

# Team
scoreboard players operation %players_select_teams uhcp_settings = %players_select_teams ssiege_settings
scoreboard players operation %friendly_fire uhcp_settings = %friendly_fire ssiege_settings
function uhcp:settings/reset/team/friendly_fire/toggle

# Auto-cook
scoreboard players operation %auto_cook uhcp_settings = %auto_cook ssiege_settings

# Auto-smelt
scoreboard players operation %auto_smelt uhcp_settings = %auto_smelt ssiege_settings

# Increased rates/drops of apples for leaves loot tables
scoreboard players operation %apple_leaves uhcp_settings = %apple_leaves ssiege_settings

# Remove enchanted golden apples from loot tables
scoreboard players operation %apple_limit uhcp_settings = %apple_limit ssiege_settings

# UHC Plus loot
scoreboard players operation %uhcp_loot uhcp_settings = %uhcp_loot ssiege_settings

# Enchantment reduction
scoreboard players operation %enchant_reduce uhcp_settings = %enchant_reduce ssiege_settings
function uhcp:settings/reset/enchant_reduce
