# Determine setting
execute if score @s uhcp_settings matches 300..303 run function uhcp:settings/other/dimensions/lower
execute if score @s uhcp_settings matches 304..307 run function uhcp:settings/other/dimensions/raise

# Set countdown to minimum if necessary
execute if score %dimension uhcp_settings matches ..-1 run scoreboard players set %dimension uhcp_settings 0

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %dimension uhcp_settings
function uhcp:settings/time_calc
execute if score %time_calcM uhcp_game_time matches 0..9 run function uhcp:settings/other/dimensions/notify/single
execute if score %time_calcM uhcp_game_time matches 10..59 run function uhcp:settings/other/dimensions/notify/double

# Check lava countdown
execute if score %dimension uhcp_settings > %lava_countdown uhcp_settings run function uhcp:settings/other/dimensions/lava
