# Augment tier
execute unless score %random uhcp_aug_tier = %random uhcp_aug_tier run scoreboard players operation %random uhcp_aug_tier = %random_def uhcp_aug_tier

# Set default arrow limit
execute unless score %arrow_limit uhcp_arrowCount = %arrow_limit uhcp_arrowCount run scoreboard players operation %arrow_limit uhcp_arrowCount = %arrow_limit_def uhcp_settings

# Update apollo arrow limit augments
scoreboard players operation %arrow_limit149 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit5 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit201 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players add %arrow_limit149 uhcp_arrowCount 8
scoreboard players add %arrow_limit5 uhcp_arrowCount 20
scoreboard players add %arrow_limit201 uhcp_arrowCount 52

# Set default border countdown
execute unless score %border_size uhcp_settings = %border_size uhcp_settings run scoreboard players operation %border_size uhcp_settings = %border_size_def uhcp_settings

# Set default border countdown
execute unless score %border_countdown uhcp_settings = %border_countdown uhcp_settings run scoreboard players operation %border_countdown uhcp_settings = %border_countdown_def uhcp_settings

# Set default border shrink speed
execute unless score %border_shrink_speed uhcp_settings = %border_shrink_speed uhcp_settings run scoreboard players operation %border_shrink_speed uhcp_settings = %border_shrink_speed_def uhcp_settings

# Set default dimension countdown
execute unless score %dimension uhcp_settings = %dimension uhcp_settings run scoreboard players operation %dimension uhcp_settings = %dimension_def uhcp_settings

# Set default soul apples
execute unless score %soul_apples uhcp_settings = %soul_apples uhcp_settings run scoreboard players operation %soul_apples uhcp_settings = %soul_apples_def uhcp_settings

# Set default titans
execute unless score %titans uhcp_settings = %titans uhcp_settings run scoreboard players operation %titans uhcp_settings = %titans_def uhcp_settings

# Set default PvP Grace Period countdown
execute unless score %pvp uhcp_settings = %pvp uhcp_settings run scoreboard players operation %pvp uhcp_settings = %pvp_def uhcp_settings

# Set default Team
execute unless score %team uhcp_settings = %team uhcp_settings run scoreboard players operation %team uhcp_settings = %team_def uhcp_settings

# Set default Team Size
execute unless score %team_size uhcp_settings = %team_size uhcp_settings run scoreboard players operation %team_size uhcp_settings = %team_size_def uhcp_settings

# Set default Friendly Fire
execute unless score %friendly_fire uhcp_settings = %friendly_fire uhcp_settings run scoreboard players operation %friendly_fire uhcp_settings = %friendly_fire_def uhcp_settings

# Set default Player Select Teams
execute unless score %players_select_teams uhcp_settings = %players_select_teams uhcp_settings run scoreboard players operation %players_select_teams uhcp_settings = %players_select_teams_def uhcp_settings

# Set default Ra Stacks
execute unless score %ra_stacks uhcp_settings = %ra_stacks uhcp_settings run scoreboard players operation %ra_stacks uhcp_settings = %ra_stacks_def uhcp_settings

# Patron augments
execute unless score %patrons uhcp_settings = %patrons uhcp_settings run scoreboard players operation %patrons uhcp_settings = %patrons_def uhcp_settings

# Set default difficulty
execute unless score %difficulty uhcp_settings = %difficulty uhcp_settings run scoreboard players operation %difficulty uhcp_settings = %difficulty_def uhcp_settings

# Set default lava scoreboard values
execute unless score %lava_countdown uhcp_settings = %lava_countdown uhcp_settings run scoreboard players operation %lava_countdown uhcp_settings = %lava_countdown_def uhcp_settings
execute unless score %lava_init uhcp_initStatus matches 1 run function uhcp:load/scores/lava
