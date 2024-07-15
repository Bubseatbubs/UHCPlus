# Turn augments off
scoreboard players set %tier uhcp_aug_tier -1
scoreboard players set %random uhcp_aug_tier 0
scoreboard players reset @a patron

tag @a add UHCP_DisableReset
item replace entity @a[gamemode=!creative] container.1 with minecraft:air
tag @a remove UHCP_DisableReset

tellraw @s [{"text":"No","color":"red"},{"text":" augments will be chosen this game.","color":"white"}]
execute if score %patrons uhcp_settings matches 1 run tellraw @s [{"text":"Patron augments have been turned "},{"text":"OFF","color":"red"},{"text":"."}]
scoreboard players set %patrons uhcp_settings 0
title @a actionbar [{"text":"Augment Tier set to ","color":"white"},{"text":"NONE","color":"red"}]
