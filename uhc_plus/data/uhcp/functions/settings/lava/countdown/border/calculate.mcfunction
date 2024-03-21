# Calculate time until border size is 100 blocks
scoreboard players operation %border_time uhcp_initStatus = %border_countdown uhcp_settings
scoreboard players operation %border_time uhcp_initStatus += %border_shrink_speed uhcp_settings
