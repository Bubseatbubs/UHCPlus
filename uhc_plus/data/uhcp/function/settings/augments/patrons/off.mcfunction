# Turn patrons off
scoreboard players set %patrons uhcp_settings 0

scoreboard players reset @a patron

execute as @a[gamemode=!creative] run function uhcp:lobby/menu
tellraw @s [{"text":"Patron augments have been turned "},{"text":"OFF","color":"red"},{"text":"."}]
title @a actionbar [{"text":"Patron augments turned "},{"text":"OFF","color":"red"}]
