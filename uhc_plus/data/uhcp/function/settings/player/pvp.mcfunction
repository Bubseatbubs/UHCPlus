# Determine setting
execute if score @s uhcp_settings matches 416..419 run function uhcp:settings/player/pvp/lower
execute if score @s uhcp_settings matches 420..423 run function uhcp:settings/player/pvp/raise

# Set countdown to minimum if necessary
execute if score %pvp uhcp_settings matches ..-1 run scoreboard players set %pvp uhcp_settings 0

# Set retained setting score
scoreboard players operation %pvp_retain uhcp_settings = %pvp uhcp_settings

# Notify player of time
scoreboard players operation %time_calcH uhcp_game_time = %pvp uhcp_settings
function uhcp:settings/time_calc
function uhcp:settings/player/pvp/notify
