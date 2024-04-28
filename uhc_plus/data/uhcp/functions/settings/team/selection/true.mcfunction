# Allow players to select teams
scoreboard players set %players_select_teams uhcp_settings 1

execute as @a[gamemode=!creative] run function uhcp:lobby/menu
function uhcp:settings/pages/team/1
tellraw @s {"text":"Players are allowed to select which teams they join."}
title @a actionbar [{"text":"Player team selection is "},{"text":"ON","color":"green"}]
