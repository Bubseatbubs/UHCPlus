# Regenerate correct augment selection item
execute as @s[tag=UHCP_AugmentRerollSlot1] run return run item replace entity @s container.3 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.4
item replace entity @s container.3 from entity @e[tag=UHCP_CurrentStoreAugment,limit=1] container.0
