# Determine setting
execute if score @s uhcp_settings matches 304 run return run function uhcp:settings/other/dimensions/raise/10s
execute if score @s uhcp_settings matches 305 run return run function uhcp:settings/other/dimensions/raise/1m
execute if score @s uhcp_settings matches 306 run return run function uhcp:settings/other/dimensions/raise/5m
execute if score @s uhcp_settings matches 307 run function uhcp:settings/other/dimensions/raise/15m
