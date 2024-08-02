# Secondary lava fills
execute if score %lava_secondary uhcp_lava_time matches 1.. run scoreboard players remove %lava_secondary uhcp_lava_time 1
execute if score %lava_secondary uhcp_lava_time matches ..0 run function uhcp:lava/raise/secondary
