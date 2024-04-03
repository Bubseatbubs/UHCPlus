# Notifications
execute if score %pvp uhcp_settings matches ..0 run function uhcp:pvp/notify/0

# Countdown
scoreboard players remove %pvp uhcp_settings 1
