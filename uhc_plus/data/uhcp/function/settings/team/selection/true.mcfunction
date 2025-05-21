# Allow players to select teams
scoreboard players set %players_select_teams uhcp_settings 1

scoreboard players set @a uhcp_leave 1000
execute if score %team uhcp_settings matches 1 run loot replace entity @a[gamemode=!creative] container.0 loot uhcp:lobby_menu/team
scoreboard players reset @a uhcp_leave

function uhcp:settings/pages/team
tellraw @s {"text":"Players are allowed to select which teams they join."}
title @a actionbar [{"text":"Player team selection is "},{"text":"ON","color":"green"}]
