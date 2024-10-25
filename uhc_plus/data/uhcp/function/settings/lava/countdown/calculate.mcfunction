# Set countdown to minimum if necessary
execute if score %lava_countdown uhcp_settings matches ..-1 run scoreboard players set %lava_countdown uhcp_settings 0

# Check time for border size
execute unless score %border_size uhcp_settings matches 100 run function uhcp:settings/lava/countdown/border/calculate
execute if score %border_size uhcp_settings matches 100 run scoreboard players set %border_time uhcp_initStatus 0
execute if score %lava_countdown uhcp_settings < %border_time uhcp_initStatus run function uhcp:settings/lava/countdown/border/limit

# Set retained setting score
scoreboard players operation %lava_countdown_retain uhcp_settings = %lava_countdown uhcp_settings

# Notify player of time
scoreboard players operation %time_calcH uhcp_game_time = %lava_countdown uhcp_settings
function uhcp:settings/time_calc
function uhcp:settings/lava/countdown/notify

# Check dimension countdown
execute if score %lava_countdown uhcp_settings < %dimension uhcp_settings run function uhcp:settings/lava/countdown/dimensions
