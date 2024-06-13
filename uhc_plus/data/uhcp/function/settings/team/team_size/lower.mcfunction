# Lower team size
execute if score @s uhcp_settings matches 504 run return run scoreboard players remove %team_size uhcp_settings 1
execute if score @s uhcp_settings matches 505 run return run scoreboard players remove %team_size uhcp_settings 3
execute if score @s uhcp_settings matches 506 run return run scoreboard players remove %team_size uhcp_settings 5
execute if score @s uhcp_settings matches 507 run scoreboard players remove %team_size uhcp_settings 15
