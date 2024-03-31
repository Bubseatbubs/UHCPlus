# Allow players to select teams
scoreboard players set %players_select_teams uhcp_settings 1

function uhcp:settings/pages/team/1
tellraw @s {"text":"Players are allowed to select which teams they join."}
