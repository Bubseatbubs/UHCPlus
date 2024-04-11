# Toggle golden apple reward off
scoreboard players reset %tier uhcp_aug_tier
scoreboard players set %random uhcp_aug_tier 1
tellraw @s {"text":"A random augment tier will be chosen each game."}
title @a actionbar [{"text":"Augment Tier set to ","color":"white"},{"text":"Random","color":"light_purple"}]
