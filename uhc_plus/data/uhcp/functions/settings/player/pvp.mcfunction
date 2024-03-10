# Determine setting
execute if score @s uhcp_settings matches 416..419 run function uhcp:settings/player/pvp_countdown/lower
execute if score @s uhcp_settings matches 420..423 run function uhcp:settings/player/pvp_countdown/raise

function uhcp:settings/player/pvp_countdown/calculate
execute if score %uhcp_pvpM uhcp_gameTime matches 0..9 run function uhcp:settings/player/pvp_countdown/notify/single
execute if score %uhcp_pvpM uhcp_gameTime matches 10..59 run function uhcp:settings/player/pvp_countdown/notify/double