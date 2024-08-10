# Determine setting
execute if score @s uhcp_settings matches 300..303 run function uhcp:settings/other/dimensions/lower
execute if score @s uhcp_settings matches 304..307 run function uhcp:settings/other/dimensions/raise

# Set countdown to minimum if necessary
execute if score %dimension uhcp_settings matches ..-1 run scoreboard players set %dimension uhcp_settings 0

# Set retained setting score
scoreboard players operation %dimension_retain uhcp_settings = %dimension uhcp_settings

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %dimension uhcp_settings
function uhcp:settings/time_calc
function uhcp:settings/other/dimensions/notify

# Check lava countdown
execute if score %dimension uhcp_settings > %lava_countdown uhcp_settings run function uhcp:settings/other/dimensions/lava
