# Set default lava scoreboard values
execute unless score %lava uhcp_lava_maxHeight matches -2147483648..2147483647 run scoreboard players operation %lava uhcp_lava_maxHeight = %lava_def uhcp_lava_maxHeight
execute unless score %lava uhcp_lava_time matches -2147483648..2147483647 run scoreboard players operation %lava uhcp_lava_time = %lava_def uhcp_lava_time
