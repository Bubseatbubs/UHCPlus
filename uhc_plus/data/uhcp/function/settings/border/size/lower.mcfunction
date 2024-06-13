# Lower border size
execute if score @s uhcp_settings matches 100 run return run scoreboard players remove %border_size uhcp_settings 10
execute if score @s uhcp_settings matches 101 run return run scoreboard players remove %border_size uhcp_settings 100
execute if score @s uhcp_settings matches 102 run return run scoreboard players remove %border_size uhcp_settings 500
execute if score @s uhcp_settings matches 103 run scoreboard players remove %border_size uhcp_settings 10000
