# Notification
tellraw @a [{"text":"Lava","color":"dark_red","bold":true},{"text":" is rising to y-level ","color":"#E34400","bold":false},{"score":{"name":"%lava","objective":"uhcp_lava_maxHeight"},"color":"#9EE8FF","bold":false},{"text":"!","color":"#E34400","bold":false}]

# Restart if initialized
execute if score %lava_init uhcp_initStatus matches 1 run return run function uhcp:settings/lava/status/restart

# Start raising lava
scoreboard players set %lava_start uhcp_initStatus 1
scoreboard players set %lava_countdown uhcp_settings -2
