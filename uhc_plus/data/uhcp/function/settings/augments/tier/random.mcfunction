# Set random augment tier each game
scoreboard players reset %tier uhcp_aug_tier
scoreboard players set %random uhcp_aug_tier 1
tellraw @s [{"text":"A "},{"text":"random","color":"light_purple"},{"text":" augment tier will be chosen each game."}]
title @a actionbar [{"text":"Augment Tier set to ","color":"white"},{"text":"Random","color":"light_purple"}]
