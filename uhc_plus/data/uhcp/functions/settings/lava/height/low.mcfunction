# Set to minimum height
execute if score %lava_init uhcp_initStatus matches 1 if score %lava uhcp_lava_height <= %lava uhcp_lava_currentHeight run function uhcp:settings/lava/height/low_set
execute unless score %lava_init uhcp_initStatus matches 1 run scoreboard players set %lava uhcp_lava_maxHeight -63
tellraw @s [{"text":"Lava height set to y-level ","color":"white"},{"score":{"name":"%lava","objective":"uhcp_lava_maxHeight"},"color":"light_purple"},{"text":".","color":"white"}]
