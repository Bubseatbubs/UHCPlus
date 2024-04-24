# Determine setting
execute if score @s uhcp_settings matches 502 run function uhcp:settings/team/selection/true
execute if score @s uhcp_settings matches 503 run function uhcp:settings/team/selection/false
