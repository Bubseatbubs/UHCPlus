# Determine setting
execute if score @s uhcp_settings matches 114 run function uhcp:settings/border/countdown/raise/10s
execute if score @s uhcp_settings matches 115 run function uhcp:settings/border/countdown/raise/1m
execute if score @s uhcp_settings matches 116 run function uhcp:settings/border/countdown/raise/5m
execute if score @s uhcp_settings matches 117 run function uhcp:settings/border/countdown/raise/15m
