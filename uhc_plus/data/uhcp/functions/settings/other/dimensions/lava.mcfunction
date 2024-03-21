# Set lava countdown = dimension countdown
scoreboard players operation %lava_countdown uhcp_settings = %dimension uhcp_settings

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %lava_countdown uhcp_settings
function uhcp:settings/time_calc
execute if score %time_calcM uhcp_gameTime matches 0..9 run function uhcp:settings/lava/countdown/notify/single
execute if score %time_calcM uhcp_gameTime matches 10..59 run function uhcp:settings/lava/countdown/notify/double
