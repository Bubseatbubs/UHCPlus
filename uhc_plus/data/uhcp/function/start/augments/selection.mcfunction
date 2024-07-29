# Determine augment tier
execute if score %tier uhcp_aug_tier matches 0 run return run execute as @a[tag=!UHCP_Spectator] run function uhcp:augments/generate/silver
execute if score %tier uhcp_aug_tier matches 1 run return run execute as @a[tag=!UHCP_Spectator] run function uhcp:augments/generate/gold
execute if score %tier uhcp_aug_tier matches 2 as @a[tag=!UHCP_Spectator] run function uhcp:augments/generate/prismatic
