scoreboard players set %tier uhcp_aug_tier -1
scoreboard players set %random uhcp_aug_tier 0
scoreboard players set %patrons uhcp_settings 0
scoreboard players reset @a patron

execute as @a[gamemode=!creative] run function uhcp:lobby/menu
tellraw @s [{"text":"No","color":"red"},{"text":" augments will be chosen this game.","color":"white"}]
title @a actionbar [{"text":"Augment Tier set to ","color":"white"},{"text":"NONE","color":"red"}]
