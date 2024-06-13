# Determine setting
execute if score @s uhcp_settings matches 110..113 run function uhcp:settings/border/countdown/lower
execute if score @s uhcp_settings matches 114..117 run function uhcp:settings/border/countdown/raise

# Set countdown to minimum if necessary
execute if score %border_countdown uhcp_settings matches ..-1 run scoreboard players set %border_countdown uhcp_settings 0

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %border_countdown uhcp_settings
function uhcp:settings/time_calc
execute if score %time_calcM uhcp_game_time matches 0..9 run function uhcp:settings/border/countdown/notify/single
execute if score %time_calcM uhcp_game_time matches 10..59 run function uhcp:settings/border/countdown/notify/double

# Ensure lava rises after border is small enough
function uhcp:settings/border/lava/check
