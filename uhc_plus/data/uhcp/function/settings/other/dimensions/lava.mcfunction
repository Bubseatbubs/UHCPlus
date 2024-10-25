# Set lava countdown = dimension countdown
scoreboard players operation %lava_countdown uhcp_settings = %dimension uhcp_settings

# Set retained setting score
scoreboard players operation %lava_countdown_retain uhcp_settings = %lava_countdown uhcp_settings

# Notify player of time
scoreboard players operation %time_calcH uhcp_game_time = %lava_countdown uhcp_settings
function uhcp:settings/time_calc
function uhcp:settings/lava/countdown/notify
