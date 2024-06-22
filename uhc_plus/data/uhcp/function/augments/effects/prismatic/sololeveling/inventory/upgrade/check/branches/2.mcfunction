# Branch 2
execute as @s[tag=UHCP_SLChest] if score %sL_item uhcp_itemInv matches 5 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/chestplate
execute as @s[tag=UHCP_SLLegs] if score %sL_item uhcp_itemInv matches 6 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/leggings
execute as @s[tag=UHCP_SLBoots] if score %sL_item uhcp_itemInv matches 7 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/boots
execute as @s[tag=UHCP_SLBow] if score %sL_item uhcp_itemInv matches 8 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/bow
execute as @s[tag=UHCP_SLHoe] if score %sL_item uhcp_itemInv matches 9 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/hoe
