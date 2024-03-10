# Determine setting
execute if score @s uhcp_settings matches 300 run function uhcp:settings/other/dimensions/lower/10s
execute if score @s uhcp_settings matches 301 run function uhcp:settings/other/dimensions/lower/1m
execute if score @s uhcp_settings matches 302 run function uhcp:settings/other/dimensions/lower/5m
execute if score @s uhcp_settings matches 303 run function uhcp:settings/other/dimensions/lower/15m
