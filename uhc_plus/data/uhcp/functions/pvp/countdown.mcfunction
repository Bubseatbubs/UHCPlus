# Notifications - Help me, Bubson! :( - Add more notification files for more times, move 0 file as desired.
execute if score %pvp uhcp_settings matches ..0 run function uhcp:pvp/notify/0

# Countdown
scoreboard players remove %pvp uhcp_settings 1
