# Set new max height
scoreboard players operation %lava uhcp_lava_maxHeight = %lava uhcp_lava_height
tellraw @s [{"text":"Lava height set to y-level ","color":"white"},{"score":{"name":"%lava","objective":"uhcp_lava_maxHeight"},"color":"light_purple"},{"text":".","color":"white"}]
