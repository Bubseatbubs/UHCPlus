# Calculate time and set to minimum if necessary
execute if score %lava_init uhcp_initStatus matches 1 run function uhcp:settings/lava/time/calculate/after
execute unless score %lava_init uhcp_initStatus matches 1 run function uhcp:settings/lava/time/calculate/before

# Notify player of time
scoreboard players operation %time_calc uhcp_settings = %lava uhcp_lava_time
function uhcp:settings/time_calc
function uhcp:settings/lava/time/notify
