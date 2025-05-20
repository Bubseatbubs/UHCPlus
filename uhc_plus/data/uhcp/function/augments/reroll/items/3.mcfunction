# Regenerate correct augment selection item
execute as @s[tag=UHCP_AugmentRerollSlot3] run return run item replace entity @s container.5 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.6
item replace entity @s container.5 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.2
