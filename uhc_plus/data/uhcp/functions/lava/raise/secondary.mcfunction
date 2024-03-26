# Initialize
execute unless score %lava_secondary_init uhcp_initStatus matches 1.. unless score %lava_secondary uhcp_initStatus matches 1.. run function uhcp:lava/raise/secondary/init

# Lower lava level
execute if score %lava_secondary_init uhcp_initStatus matches 1.. if score %lava_secondary uhcp_lava_time matches ..0 run function uhcp:lava/raise/secondary/lower
