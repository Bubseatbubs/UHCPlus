# Turn patrons on
scoreboard players set %patrons uhcp_settings 1

scoreboard players set @a uhcp_leave 1000
loot replace entity @a[gamemode=!creative] container.1 loot uhcp:lobby_menu/patron
scoreboard players reset @a uhcp_leave
