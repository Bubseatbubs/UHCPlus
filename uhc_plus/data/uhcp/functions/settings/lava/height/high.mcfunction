# Set to max height
scoreboard players set %uhcp_lava uhcp_lavaMaxHeight 320
tellraw @s [{"text":"Lava height set to y-level ","color":"white"},{"score":{"name":"%uhcp_lava","objective":"uhcp_lavaMaxHeight"},"color":"light_purple"},{"text":".","color":"white"}]
