# Determine setting
execute if score @s uhcp_settings matches 420 run function uhcp:settings/player/pvp_countdown/raise/10s
execute if score @s uhcp_settings matches 421 run function uhcp:settings/player/pvp_countdown/raise/1m
execute if score @s uhcp_settings matches 422 run function uhcp:settings/player/pvp_countdown/raise/5m
execute if score @s uhcp_settings matches 423 run function uhcp:settings/player/pvp_countdown/raise/15m
