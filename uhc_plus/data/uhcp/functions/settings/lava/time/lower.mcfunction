# Determine setting
execute unless score %uhcp_lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players set %uhcp_lava uhcp_lavaTime 8400
execute if score @s uhcp_settings matches 810 run function uhcp:settings/lava/time/lower/10s
execute if score @s uhcp_settings matches 811 run function uhcp:settings/lava/time/lower/1m
execute if score @s uhcp_settings matches 812 run function uhcp:settings/lava/time/lower/5m
execute if score @s uhcp_settings matches 813 run function uhcp:settings/lava/time/lower/15m
