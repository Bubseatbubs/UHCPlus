# Allow player team selection
scoreboard players set %players_select_teams uhcp_settings 1
execute as @a[gamemode=!creative] run function uhcp:lobby/menu
