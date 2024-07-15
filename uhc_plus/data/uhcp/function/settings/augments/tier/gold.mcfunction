# Set augment tier to gold
scoreboard players set %tier uhcp_aug_tier 1
scoreboard players set %random uhcp_aug_tier 0
tellraw @s [{"text":"Gold","color":"gold"},{"text":" tier augments will be chosen this game.","color":"white"}]
title @a actionbar [{"text":"Augment Tier set to ","color":"white"},{"text":"Gold","color":"gold"}]
