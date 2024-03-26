# Set dimension countdown = lava countdown
scoreboard players operation %dimension uhcp_settings = %lava_countdown uhcp_settings

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %dimension uhcp_settings
function uhcp:settings/time_calc
execute if score %time_calcM uhcp_game_time matches 0..9 run function uhcp:settings/other/dimensions/notify/single
execute if score %time_calcM uhcp_game_time matches 10..59 run function uhcp:settings/other/dimensions/notify/double
