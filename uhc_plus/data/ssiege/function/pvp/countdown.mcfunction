# End grace period
execute if score %pvp uhcp_settings matches ..0 run function uhcp:pvp/start

# Countdown
scoreboard players remove %pvp uhcp_settings 1
