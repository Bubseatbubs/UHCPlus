# Turn patrons off
scoreboard players set %patrons uhcp_settings 0

scoreboard players reset @a patron

tag @a add UHCP_DisableReset
item replace entity @a[gamemode=!creative] container.1 with minecraft:air
tag @a remove UHCP_DisableReset

tellraw @s [{"text":"Patron augments have been turned "},{"text":"OFF","color":"red"},{"text":"."}]
title @a actionbar [{"text":"Patron augments turned "},{"text":"OFF","color":"red"}]
