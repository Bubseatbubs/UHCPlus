# Turn patrons off
scoreboard players set %patrons uhcp_settings 0

scoreboard players reset @a patron

scoreboard players set @a uhcp_leave 1000
item replace entity @a[gamemode=!creative] container.1 with minecraft:air
scoreboard players reset @a uhcp_leave

tellraw @s [{"text":"Patron augments have been turned "},{"text":"OFF","color":"red"},{"text":"."}]
title @a actionbar [{"text":"Patron augments turned "},{"text":"OFF","color":"red"}]
