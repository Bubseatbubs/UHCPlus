# Set new max height
scoreboard players operation %uhcp_lava uhcp_lavaMaxHeight = %uhcp_lava uhcp_lavaHeight
tellraw @s [{"text":"Lava height set to y-level ","color":"white"},{"score":{"name":"%uhcp_lava","objective":"uhcp_lavaMaxHeight"},"color":"light_purple"},{"text":".","color":"white"}]
