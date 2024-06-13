# Set lava countdown to new minimum
scoreboard players operation %lava_countdown uhcp_settings = %border_time uhcp_initStatus
tellraw @s {"text":"Border settings limited the minimum lava countdown.","color":"red"}
