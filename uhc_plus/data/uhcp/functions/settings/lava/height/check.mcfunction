# Check status
execute if score %lava_init uhcp_initStatus matches 1 if score %lava uhcp_lava_height > %lava uhcp_lava_currentHeight run function uhcp:settings/lava/height/set
execute if score @s uhcp_settings matches 208..212 if score %lava_init uhcp_initStatus matches 1 if score %lava uhcp_lava_height <= %lava uhcp_lava_currentHeight run function uhcp:settings/lava/height/low
execute if score @s uhcp_settings matches 213..217 if score %lava_init uhcp_initStatus matches 1 if score %lava uhcp_lava_height <= %lava uhcp_lava_currentHeight run function uhcp:settings/lava/height/set
execute unless score %lava_init uhcp_initStatus matches 1 run function uhcp:settings/lava/height/set
