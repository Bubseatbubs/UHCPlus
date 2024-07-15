# Turn patrons on
scoreboard players set %patrons uhcp_settings 1

tag @a add UHCP_DisableReset
loot replace entity @a[gamemode=!creative] container.1 loot uhcp:lobby_menu/patron
tag @a remove UHCP_DisableReset
