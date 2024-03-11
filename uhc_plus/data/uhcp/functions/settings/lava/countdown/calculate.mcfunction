# Set countdown to minimum if necessary
execute if score %lava_countdown uhcp_settings matches ..-1 run scoreboard players set %lava_countdown uhcp_settings 0

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %lava_countdown uhcp_settings
function uhcp:settings/time_calc
execute if score %time_calcM uhcp_gameTime matches 0..9 run function uhcp:settings/lava/countdown/notify/single
execute if score %time_calcM uhcp_gameTime matches 10..59 run function uhcp:settings/lava/countdown/notify/double
