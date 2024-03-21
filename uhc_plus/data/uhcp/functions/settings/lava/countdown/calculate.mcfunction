# Set countdown to minimum if necessary
execute if score %lava_countdown uhcp_settings matches ..-1 run scoreboard players set %lava_countdown uhcp_settings 0

# Check time for border size
execute unless score %border_size uhcp_settings matches 100 run function uhcp:settings/lava/countdown/border/calculate
execute if score %border_size uhcp_settings matches 100 run scoreboard players set %border_time uhcp_initStatus 0
execute if score %lava_countdown uhcp_settings < %border_time uhcp_initStatus run function uhcp:settings/lava/countdown/border/limit

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %lava_countdown uhcp_settings
function uhcp:settings/time_calc
execute if score %time_calcM uhcp_gameTime matches 0..9 run function uhcp:settings/lava/countdown/notify/single
execute if score %time_calcM uhcp_gameTime matches 10..59 run function uhcp:settings/lava/countdown/notify/double

# Check dimension countdown
execute if score %lava_countdown uhcp_settings < %dimension uhcp_settings run function uhcp:settings/lava/countdown/dimensions
