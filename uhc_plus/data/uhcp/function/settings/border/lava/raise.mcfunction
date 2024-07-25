# Set lava countdown = time for border to reach size 100
scoreboard players operation %lava_countdown uhcp_settings = %border_time uhcp_initStatus

# Set retained setting score
scoreboard players operation %lava_countdown_retain uhcp_settings = %lava_countdown uhcp_settings

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %lava_countdown uhcp_settings
function uhcp:settings/time_calc
execute if score %time_calcM uhcp_game_time matches 0..9 run function uhcp:settings/lava/countdown/notify/single
execute if score %time_calcM uhcp_game_time matches 10..59 run function uhcp:settings/lava/countdown/notify/double
