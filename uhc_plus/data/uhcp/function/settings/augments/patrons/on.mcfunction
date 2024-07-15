# Turn patrons on
scoreboard players set %patrons uhcp_settings 1

tag @a add UHCP_DisableReset
loot replace entity @a[gamemode=!creative] container.1 loot uhcp:lobby_menu/patron
tag @a remove UHCP_DisableReset

tellraw @s [{"text":"Patron augments have been turned "},{"text":"ON","color":"green"},{"text":"."}]
execute if score %tier uhcp_aug_tier matches -1 run function uhcp:settings/augments/patrons/tier
title @a actionbar [{"text":"Patron augments turned "},{"text":"ON","color":"green"}]
