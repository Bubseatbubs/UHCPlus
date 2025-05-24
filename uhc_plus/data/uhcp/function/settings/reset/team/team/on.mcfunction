# Turn teams on
scoreboard players set %team uhcp_settings 1

scoreboard players set @a uhcp_leave 1000
execute if score %players_select_teams_def_uhcp uhcp_settings matches 1 run loot replace entity @a[gamemode=!creative] container.0 loot uhcp:lobby_menu/team
scoreboard players reset @a uhcp_leave
