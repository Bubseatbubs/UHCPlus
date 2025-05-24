# Determine setting
execute unless score %lava uhcp_lava_time = %lava uhcp_lava_time run scoreboard players operation %lava uhcp_lava_time = %lava_def_uhcp uhcp_lava_time
execute if score @s uhcp_settings matches 204 run return run function uhcp:settings/lava/time/raise/10s
execute if score @s uhcp_settings matches 205 run return run function uhcp:settings/lava/time/raise/1m
execute if score @s uhcp_settings matches 206 run return run function uhcp:settings/lava/time/raise/5m
execute if score @s uhcp_settings matches 207 run function uhcp:settings/lava/time/raise/15m
