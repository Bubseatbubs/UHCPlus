# Determine setting
execute if score @s uhcp_settings matches 416 run return run function uhcp:settings/player/pvp_countdown/lower/10s
execute if score @s uhcp_settings matches 417 run return run function uhcp:settings/player/pvp_countdown/lower/1m
execute if score @s uhcp_settings matches 418 run return run function uhcp:settings/player/pvp_countdown/lower/5m
execute if score @s uhcp_settings matches 419 run function uhcp:settings/player/pvp_countdown/lower/15m
