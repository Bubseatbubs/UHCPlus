# Determine setting
execute if score @s uhcp_settings matches 416..419 run function uhcp:settings/player/pvp_countdown/lower
execute if score @s uhcp_settings matches 420..423 run function uhcp:settings/player/pvp_countdown/raise

# Set countdown to minimum if necessary
execute if score %pvp uhcp_settings matches ..-1 run scoreboard players set %pvp uhcp_settings 0

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %pvp uhcp_settings
function uhcp:settings/time_calc
execute if score %time_calcM uhcp_gameTime matches 0..9 run function uhcp:settings/player/pvp_countdown/notify/single
execute if score %time_calcM uhcp_gameTime matches 10..59 run function uhcp:settings/player/pvp_countdown/notify/double
