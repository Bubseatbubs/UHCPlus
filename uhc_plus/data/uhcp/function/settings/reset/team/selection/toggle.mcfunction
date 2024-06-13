# Allow player team selection
execute if score %players_select_teams_def uhcp_settings matches 1 run return run function uhcp:settings/reset/team/selection/on

# Do not allow player team selection
scoreboard players set %players_select_teams uhcp_settings 0
scoreboard players reset @a team
execute as @a[gamemode=!creative] run function uhcp:lobby/menu
