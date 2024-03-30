
# Determine setting
execute if score @s uhcp_settings matches 502 run scoreboard players set %players_select_teams uhcp_settings 1
execute if score @s uhcp_settings matches 503 run scoreboard players set %players_select_teams uhcp_settings 0

execute if score %players_select_teams uhcp_settings matches 1 run tellraw @s [{"text":"Players are allowed to select what team to join."}]
execute if score %players_select_teams uhcp_settings matches 0 run tellraw @s [{"text":"Players are not allowed to select what team to join."}]
