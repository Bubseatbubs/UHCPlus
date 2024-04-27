# Determine setting
execute if score @s uhcp_settings matches 218 run return run function uhcp:settings/lava/countdown/lower/10s
execute if score @s uhcp_settings matches 219 run return run function uhcp:settings/lava/countdown/lower/1m
execute if score @s uhcp_settings matches 220 run return run function uhcp:settings/lava/countdown/lower/5m
execute if score @s uhcp_settings matches 221 run function uhcp:settings/lava/countdown/lower/15m
