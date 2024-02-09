# Upgrade if necessary
execute store result score %uhcp_sLStage uhcp_itemInv run data get storage uhcp:solo_level InventoryWork[0].tag.solo_stage
execute if score @s uhcp_a_tier matches 6..8 if score %uhcp_sLStage uhcp_itemInv matches ..0 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/boots/1
execute if score @s uhcp_a_tier matches 9..11 if score %uhcp_sLStage uhcp_itemInv matches ..1 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/boots/2
execute if score @s uhcp_a_tier matches 12..13 if score %uhcp_sLStage uhcp_itemInv matches ..2 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/boots/3
execute if score @s uhcp_a_tier matches 14..15 if score %uhcp_sLStage uhcp_itemInv matches ..3 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/boots/4
execute if score @s uhcp_a_tier matches 16..17 if score %uhcp_sLStage uhcp_itemInv matches ..4 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/boots/5
execute if score @s uhcp_a_tier matches 18 if score %uhcp_sLStage uhcp_itemInv matches ..5 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/boots/6
