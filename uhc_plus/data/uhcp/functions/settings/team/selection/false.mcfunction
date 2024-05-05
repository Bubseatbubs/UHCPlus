# Do not allow players to select teams
scoreboard players set %players_select_teams uhcp_settings 0

scoreboard players reset @a team

execute as @a[gamemode=!creative] run function uhcp:lobby/menu
function uhcp:settings/pages/team
tellraw @s {"text":"Players are not allowed to select which teams they join."}
title @a actionbar [{"text":"Player team selection is "},{"text":"OFF","color":"red"}]
