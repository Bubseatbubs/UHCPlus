# Initial logic
execute unless score %lava_init uhcp_initStatus matches 1 run function uhcp:lava/init

# Decrement lava timers
execute if score %lava uhcp_lava_time matches 1.. run scoreboard players remove %lava uhcp_lava_time 1
execute if score %lava uhcp_lava_timeInterval matches 1.. run scoreboard players remove %lava uhcp_lava_timeInterval 1
scoreboard players remove %lava_top uhcp_lava_time 1

# Check if time to fill next layers
execute if score %lava uhcp_lava_timeInterval matches ..0 if score %lava uhcp_lava_currentHeight < %lava uhcp_lava_maxHeight run function uhcp:lava/raise/initial

# Secondary layers
execute if score %lava uhcp_lava_currentHeight matches -62.. run function uhcp:lava/secondary

# Fill top layers
execute if score %lava_top uhcp_lava_time matches ..0 run function uhcp:lava/top

# Lava barriers
execute if score %lava_barrier uhcp_lava_currentLayers matches 16.. run return fail
scoreboard players remove %lava_barrier uhcp_lava_time 1
execute if score %lava_barrier uhcp_lava_time matches ..0 run function uhcp:lava/raise/barriers
