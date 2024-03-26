# Set default lava scoreboard values
execute unless score %lava uhcp_lavaMaxHeight matches -2147483648..2147483647 run scoreboard players operation %lava uhcp_lavaMaxHeight = %lava_def uhcp_lavaMaxHeight
execute unless score %lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players operation %lava uhcp_lavaTime = %lava_def uhcp_lavaTime
