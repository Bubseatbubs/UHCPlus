# Determine setting
execute unless score %uhcp_lava uhcp_lavaTime matches -2147483648..2147483647 run scoreboard players operation %uhcp_lava uhcp_lavaTime = %uhcp_lavaDef uhcp_lavaTime
execute if score @s uhcp_settings matches 204 run function uhcp:settings/lava/time/raise/10s
execute if score @s uhcp_settings matches 205 run function uhcp:settings/lava/time/raise/1m
execute if score @s uhcp_settings matches 206 run function uhcp:settings/lava/time/raise/5m
execute if score @s uhcp_settings matches 207 run function uhcp:settings/lava/time/raise/15m
