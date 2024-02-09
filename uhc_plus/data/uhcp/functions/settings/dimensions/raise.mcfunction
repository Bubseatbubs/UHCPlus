# Determine setting
execute if score @s uhcp_settings matches 604 run function uhcp:settings/dimensions/raise/10s
execute if score @s uhcp_settings matches 605 run function uhcp:settings/dimensions/raise/1m
execute if score @s uhcp_settings matches 606 run function uhcp:settings/dimensions/raise/5m
execute if score @s uhcp_settings matches 607 run function uhcp:settings/dimensions/raise/15m
