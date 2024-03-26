# Set new max height
scoreboard players operation %lava uhcp_lavaMaxHeight = %lava uhcp_lavaHeight
tellraw @s [{"text":"Lava height set to y-level ","color":"white"},{"score":{"name":"%uhcp_lava","objective":"uhcp_lavaMaxHeight"},"color":"light_purple"},{"text":".","color":"white"}]
