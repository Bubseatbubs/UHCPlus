# Determine setting
execute if score @s uhcp_settings matches 110 run function uhcp:settings/border/countdown/lower/10s
execute if score @s uhcp_settings matches 111 run function uhcp:settings/border/countdown/lower/1m
execute if score @s uhcp_settings matches 112 run function uhcp:settings/border/countdown/lower/5m
execute if score @s uhcp_settings matches 113 run function uhcp:settings/border/countdown/lower/15m
