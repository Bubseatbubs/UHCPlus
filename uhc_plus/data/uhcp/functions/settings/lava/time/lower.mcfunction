# Determine setting
execute unless score %lava uhcp_lava_time = %lava uhcp_lava_time run scoreboard players operation %lava uhcp_lava_time = %lava_def uhcp_lava_time
execute if score @s uhcp_settings matches 200 run function uhcp:settings/lava/time/lower/10s
execute if score @s uhcp_settings matches 201 run function uhcp:settings/lava/time/lower/1m
execute if score @s uhcp_settings matches 202 run function uhcp:settings/lava/time/lower/5m
execute if score @s uhcp_settings matches 203 run function uhcp:settings/lava/time/lower/15m
