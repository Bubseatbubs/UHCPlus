# Turn patrons on
scoreboard players set %patrons uhcp_settings 1

execute as @a[gamemode=!creative] run function uhcp:lobby/menu
tellraw @s [{"text":"Patron augments have been turned "},{"text":"ON","color":"green"},{"text":"."}]
title @a actionbar [{"text":"Patron augments turned "},{"text":"ON","color":"green"}]
