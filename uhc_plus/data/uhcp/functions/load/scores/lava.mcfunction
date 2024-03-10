# Set default lava scoreboard values
execute unless score %lava_countdown uhcp_settings matches -2147483648..2147483647 run scoreboard players operation %lava_countdown uhcp_settings = %lava_countdown_def uhcp_settings
execute unless score %uhcp_lava uhcp_lavaMaxHeight matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_lavaMaxHeight = %uhcp_lavaDef uhcp_lavaMaxHeight
execute unless score %uhcp_lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_lavaTime = %uhcp_lavaDef uhcp_lavaTime
