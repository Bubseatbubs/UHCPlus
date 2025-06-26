# Undo prior transformations
execute as @s[tag=UHCP_IsPanda] run return run function uhcp:augments/effects/prismatic/kungfupanda/reset
execute as @s[tag=UHCP_IsAttackTitan] run return run function uhcp:consumables/titan_spinal_fluid/reset
execute as @s[tag=UHCP_SmoothGetaway] run return run function uhcp:relics/smooth_getaway/finish
execute as @s[predicate=uhcp:augments/prop_hunt/player,scores={uhcp_aug_tier=1}] run function uhcp:augments/effects/silver/prophunt/rejoin
