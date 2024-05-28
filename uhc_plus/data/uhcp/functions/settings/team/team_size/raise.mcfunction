# Raise team size
execute if score @s uhcp_settings matches 508 run return run scoreboard players add %team_size uhcp_settings 1
execute if score @s uhcp_settings matches 509 run return run scoreboard players add %team_size uhcp_settings 3
execute if score @s uhcp_settings matches 510 run return run scoreboard players add %team_size uhcp_settings 5
execute if score @s uhcp_settings matches 511 run scoreboard players add %team_size uhcp_settings 15
