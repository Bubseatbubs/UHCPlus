# Determine setting
execute if score @s uhcp_settings matches 404 run function uhcp:settings/dimensions/raise/10s
execute if score @s uhcp_settings matches 405 run function uhcp:settings/dimensions/raise/1m
execute if score @s uhcp_settings matches 406 run function uhcp:settings/dimensions/raise/5m
execute if score @s uhcp_settings matches 407 run function uhcp:settings/dimensions/raise/15m
