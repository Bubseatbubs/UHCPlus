# Determine setting
execute unless score %lava uhcp_lava_time matches -2147483648..2147483647 run scoreboard players operation %lava uhcp_lava_time = %lava_def uhcp_lava_time
execute if score @s uhcp_settings matches 204 run function uhcp:settings/lava/time/raise/10s
execute if score @s uhcp_settings matches 205 run function uhcp:settings/lava/time/raise/1m
execute if score @s uhcp_settings matches 206 run function uhcp:settings/lava/time/raise/5m
execute if score @s uhcp_settings matches 207 run function uhcp:settings/lava/time/raise/15m
