# Lower shrink speed
execute if score @s uhcp_settings matches 118 run return run scoreboard players remove %border_shrink_speed uhcp_settings 200
execute if score @s uhcp_settings matches 119 run return run scoreboard players remove %border_shrink_speed uhcp_settings 1200
execute if score @s uhcp_settings matches 120 run return run scoreboard players remove %border_shrink_speed uhcp_settings 6000
execute if score @s uhcp_settings matches 121 run scoreboard players remove %border_shrink_speed uhcp_settings 18000
