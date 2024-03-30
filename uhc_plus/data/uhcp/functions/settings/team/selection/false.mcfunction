# Do not allow players to select teams
scoreboard players set %players_select_teams uhcp_settings 0

scoreboard players reset @a team

tellraw @s {"text":"Players are not allowed to select which teams they join."}
