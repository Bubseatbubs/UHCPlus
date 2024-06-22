# Branch 1
execute as @s[tag=UHCP_SLSword] if score %sL_item uhcp_itemInv matches 0 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/sword
execute as @s[tag=UHCP_SLPick] if score %sL_item uhcp_itemInv matches 1 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/pickaxe
execute as @s[tag=UHCP_SLAxe] if score %sL_item uhcp_itemInv matches 2 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/axe
execute as @s[tag=UHCP_SLShovel] if score %sL_item uhcp_itemInv matches 3 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/shovel
execute as @s[tag=UHCP_SLHelm] if score %sL_item uhcp_itemInv matches 4 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/helmet
