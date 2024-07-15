# Do not allow players to select teams
scoreboard players set %players_select_teams uhcp_settings 0

scoreboard players reset @a team

tag @a add UHCP_DisableReset
item replace entity @a[gamemode=!creative] container.0 with minecraft:air
tag @a remove UHCP_DisableReset

function uhcp:settings/pages/team
tellraw @s {"text":"Players are not allowed to select which teams they join."}
title @a actionbar [{"text":"Player team selection is "},{"text":"OFF","color":"red"}]
