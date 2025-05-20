# Regenerate correct augment selection item
execute as @s[tag=UHCP_AugmentRerollSlot2] run return run item replace entity @s container.4 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.5
item replace entity @s container.4 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.1
