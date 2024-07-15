# Allow player team selection
execute if score %players_select_teams_def uhcp_settings matches 1 run return run function uhcp:settings/reset/team/selection/on

# Do not allow player team selection
scoreboard players set %players_select_teams uhcp_settings 0
scoreboard players reset @a team

tag @a add UHCP_DisableReset
item replace entity @a[gamemode=!creative] container.0 with minecraft:air
tag @a remove UHCP_DisableReset
