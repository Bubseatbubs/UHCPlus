# Check status
execute if score %uhcp_lavaInit uhcp_initStatus matches 1.. if score %uhcp_lava uhcp_lavaHeight > %uhcp_lava uhcp_lavaCurrentHeight run function uhcp:settings/lava/height/set
execute if score @s uhcp_settings matches 820..824 if score %uhcp_lavaInit uhcp_initStatus matches 1.. if score %uhcp_lava uhcp_lavaHeight <= %uhcp_lava uhcp_lavaCurrentHeight run function uhcp:settings/lava/height/low
execute if score @s uhcp_settings matches 825..829 if score %uhcp_lavaInit uhcp_initStatus matches 1.. if score %uhcp_lava uhcp_lavaHeight <= %uhcp_lava uhcp_lavaCurrentHeight run function uhcp:settings/lava/height/set
execute unless score %uhcp_lavaInit uhcp_initStatus matches 1.. run function uhcp:settings/lava/height/set
