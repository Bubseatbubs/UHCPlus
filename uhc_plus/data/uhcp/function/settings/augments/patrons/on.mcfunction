# Turn patrons on
scoreboard players set %patrons uhcp_settings 1

scoreboard players set @a uhcp_leave 1000
loot replace entity @a[gamemode=!creative] container.1 loot uhcp:lobby_menu/patron
scoreboard players reset @a uhcp_leave

tellraw @s [{"text":"Patron augments have been turned "},{"text":"ON","color":"green"},{"text":"."}]
execute if score %tier uhcp_aug_tier matches -1 run function uhcp:settings/augments/patrons/tier
title @a actionbar [{"text":"Patron augments turned "},{"text":"ON","color":"green"}]
