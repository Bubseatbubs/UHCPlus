# Check status
execute if score %lava_init uhcp_initStatus matches 1 if score %lava uhcp_lava_height > %lava uhcp_lava_currentHeight run function uhcp:settings/lava/height/set
execute if score @s uhcp_settings matches 820..824 if score %lava_init uhcp_initStatus matches 1 if score %lava uhcp_lava_height <= %lava uhcp_lava_currentHeight run function uhcp:settings/lava/height/low
execute if score @s uhcp_settings matches 825..829 if score %lava_init uhcp_initStatus matches 1 if score %lava uhcp_lava_height <= %lava uhcp_lava_currentHeight run function uhcp:settings/lava/height/set
execute unless score %lava_init uhcp_initStatus matches 1 run function uhcp:settings/lava/height/set
