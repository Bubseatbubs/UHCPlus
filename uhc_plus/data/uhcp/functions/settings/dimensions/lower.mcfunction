# Determine setting
execute if score @s uhcp_settings matches 600 run function uhcp:settings/dimensions/lower/10s
execute if score @s uhcp_settings matches 601 run function uhcp:settings/dimensions/lower/1m
execute if score @s uhcp_settings matches 602 run function uhcp:settings/dimensions/lower/5m
execute if score @s uhcp_settings matches 603 run function uhcp:settings/dimensions/lower/15m
