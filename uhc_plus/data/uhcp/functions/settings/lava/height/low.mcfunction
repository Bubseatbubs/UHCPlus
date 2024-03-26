# Set to minimum height
execute if score %lava_init uhcp_initStatus matches 1.. if score %lava uhcp_lavaHeight <= %lava uhcp_lavaCurrentHeight run function uhcp:settings/lava/height/low_set
execute unless score %lava_init uhcp_initStatus matches 1.. run scoreboard players set %lava uhcp_lavaMaxHeight -63
tellraw @s [{"text":"Lava height set to y-level ","color":"white"},{"score":{"name":"%uhcp_lava","objective":"uhcp_lavaMaxHeight"},"color":"light_purple"},{"text":".","color":"white"}]
