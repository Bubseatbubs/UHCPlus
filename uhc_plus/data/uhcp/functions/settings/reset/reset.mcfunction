# Augment tier
scoreboard players operation %random uhcp_aug_tier = %random_def uhcp_aug_tier

# Arrow limit
scoreboard players operation %arrow_limit uhcp_arrowCount = %arrow_limit_def uhcp_settings

# Update apollo arrow limit augments
scoreboard players operation %arrow_limit149 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit5 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit201 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players add %arrow_limit149 uhcp_arrowCount 8
scoreboard players add %arrow_limit5 uhcp_arrowCount 20
scoreboard players add %arrow_limit201 uhcp_arrowCount 52

# Border size
scoreboard players operation %border_size uhcp_settings = %border_size_def uhcp_settings

# Border countdown
scoreboard players operation %border_countdown uhcp_settings = %border_countdown_def uhcp_settings

# Border shrink speed
scoreboard players operation %border_shrink_speed uhcp_settings = %border_shrink_speed_def uhcp_settings

# Dimension countdown
scoreboard players operation %dimension uhcp_settings = %dimension_def uhcp_settings

# Number of Titans
scoreboard players operation %titans uhcp_settings = %titans_def uhcp_settings

# Soul apples
scoreboard players operation %soul_apples uhcp_settings = %soul_apples_def uhcp_settings

# Grace period countdown
scoreboard players operation %pvp uhcp_settings = %pvp_def uhcp_settings

# Set default Ra Stacks
scoreboard players operation %ra_stacks uhcp_settings = %ra_stacks_def uhcp_settings

# Patron augments
execute unless score %patrons uhcp_settings = %patrons_def uhcp_settings run function uhcp:settings/reset/patrons/toggle

# Night Vision
scoreboard players operation %night_vision uhcp_settings = %night_vision_def uhcp_settings

# Set default difficulty
execute unless score %difficulty_def uhcp_settings matches 1.. run function uhcp:settings/reset/difficulty/easy
execute if score %difficulty_def uhcp_settings matches 1 run function uhcp:settings/reset/difficulty/normal
execute if score %difficulty_def uhcp_settings matches 2 run function uhcp:settings/reset/difficulty/hard
execute if score %difficulty_def uhcp_settings matches 3 run function uhcp:settings/reset/difficulty/peaceful
scoreboard players operation %difficulty uhcp_settings = %difficulty_def uhcp_settings

# Set default lava scoreboard values
execute unless score %lava_init uhcp_initStatus matches 1 run function uhcp:settings/reset/lava
scoreboard players operation %lava_countdown uhcp_settings = %lava_countdown_def uhcp_settings

# Set default team values
scoreboard players operation %team_size uhcp_settings = %team_size_def uhcp_settings
execute unless score %team uhcp_settings = %team_def uhcp_settings run function uhcp:settings/reset/team/team/toggle
scoreboard players operation %players_select_teams uhcp_settings = %players_select_teams_def uhcp_settings
execute unless score %friendly_fire uhcp_settings = %friendly_fire_def uhcp_settings run function uhcp:settings/reset/team/friendly_fire/toggle
scoreboard players operation %friendly_fire uhcp_settings = %friendly_fire_def uhcp_settings

# Display page
function uhcp:settings/pages/main
tellraw @s "Settings were reset to their default values."
title @a actionbar [{"text":"Settings were reset","color":"dark_red"}]
