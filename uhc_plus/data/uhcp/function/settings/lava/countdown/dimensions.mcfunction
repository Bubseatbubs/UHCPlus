# Set dimension countdown = lava countdown
scoreboard players operation %dimension uhcp_settings = %lava_countdown uhcp_settings

# Set retained setting score
scoreboard players operation %dimension_retain uhcp_settings = %dimension uhcp_settings

# Notify player of time
scoreboard players operation %time_calcH uhcp_game_time = %dimension uhcp_settings
function uhcp:settings/time_calc
function uhcp:settings/other/dimensions/notify
