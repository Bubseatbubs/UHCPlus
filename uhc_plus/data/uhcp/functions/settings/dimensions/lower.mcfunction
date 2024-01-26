# Determine setting
execute if score @s uhcp_settings matches 400 run function uhcp:settings/dimensions/lower/10s
execute if score @s uhcp_settings matches 401 run function uhcp:settings/dimensions/lower/1m
execute if score @s uhcp_settings matches 402 run function uhcp:settings/dimensions/lower/5m
execute if score @s uhcp_settings matches 403 run function uhcp:settings/dimensions/lower/15m
