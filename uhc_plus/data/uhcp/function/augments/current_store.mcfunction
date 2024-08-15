# Find current augment storage chest minecart
execute as @e[tag=UHCP_StoreAugment] if score @s uhcp_id = @a[tag=UHCP_LoadAugment,limit=1] uhcp_id run return run tag @s add UHCP_CurrentStoreAugment
