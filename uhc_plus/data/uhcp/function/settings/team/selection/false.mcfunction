# Do not allow players to select teams
scoreboard players set %players_select_teams uhcp_settings 0

scoreboard players reset @a team

scoreboard players set @a uhcp_leave 1000
item replace entity @a[gamemode=!creative] container.0 with minecraft:air
scoreboard players reset @a uhcp_leave

function uhcp:settings/pages/team
tellraw @s {"text":"Players are not allowed to select which teams they join."}
title @a actionbar [{"text":"Player team selection is "},{"text":"OFF","color":"red"}]
