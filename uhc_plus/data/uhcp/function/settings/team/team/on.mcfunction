# Turn teams on
scoreboard players set %team uhcp_settings 1

tag @a add UHCP_DisableReset
execute if score %players_select_teams uhcp_settings matches 1 run loot replace entity @a[gamemode=!creative] container.0 loot uhcp:lobby_menu/team
tag @a remove UHCP_DisableReset

function uhcp:settings/pages/team
tellraw @s [{"text":"Teams have been turned "},{"text":"ON","color":"green"},{"text":"."}]
title @a actionbar [{"text":"Game type set to "},{"text":"TEAM","color":"gold"}]
