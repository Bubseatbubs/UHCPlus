# Determine setting
execute if score @s uhcp_settings matches 222 run function uhcp:settings/lava/countdown/raise/10s
execute if score @s uhcp_settings matches 223 run function uhcp:settings/lava/countdown/raise/1m
execute if score @s uhcp_settings matches 224 run function uhcp:settings/lava/countdown/raise/5m
execute if score @s uhcp_settings matches 225 run function uhcp:settings/lava/countdown/raise/15m
