# Set default arrow limit
execute unless score %arrow_limit uhcp_arrowCount matches -2147483648..2147483647 run scoreboard players operation %arrow_limit uhcp_arrowCount = %arrow_limit_def uhcp_settings

# Update apollo arrow limit augments
scoreboard players operation %arrow_limit149 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit5 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players operation %arrow_limit201 uhcp_arrowCount = %arrow_limit uhcp_arrowCount
scoreboard players add %arrow_limit149 uhcp_arrowCount 8
scoreboard players add %arrow_limit5 uhcp_arrowCount 20
scoreboard players add %arrow_limit201 uhcp_arrowCount 52

# Set default dimension countdown
execute unless score %dimension uhcp_settings matches -2147483648..2147483647 run scoreboard players operation %dimension uhcp_settings = %dimension_def uhcp_settings

# Set default golden apples
execute unless score %golden_apples uhcp_settings = %golden_apples uhcp_settings run scoreboard players operation %golden_apples uhcp_settings = %golden_apples_def uhcp_settings

# Set default PvP Grace Period countdown
execute unless score %pvp uhcp_settings = %pvp uhcp_settings run scoreboard players operation %pvp uhcp_settings = %pvp_def uhcp_settings

# Set default Friendly Fire
execute unless score %friendly_fire uhcp_settings = %friendly_fire uhcp_settings run scoreboard players operation %friendly_fire uhcp_settings = %friendly_fire_def uhcp_settings

# Set default Ra Stacks
execute unless score %ra_stacks uhcp_settings = %ra_stacks uhcp_settings run scoreboard players operation %ra_stacks uhcp_settings = %ra_stacks_def uhcp_settings

# Set default difficulty
execute unless score %difficulty uhcp_settings = %difficulty uhcp_settings run scoreboard players operation %difficulty uhcp_settings = %difficulty_def uhcp_settings

# Set default lava scoreboard values
execute unless score %lava_countdown uhcp_settings = %lava_countdown uhcp_settings run scoreboard players operation %lava_countdown uhcp_settings = %lava_countdown_def uhcp_settings
execute unless score %uhcp_lavaInit uhcp_initStatus matches 1 run function uhcp:load/scores/lava
