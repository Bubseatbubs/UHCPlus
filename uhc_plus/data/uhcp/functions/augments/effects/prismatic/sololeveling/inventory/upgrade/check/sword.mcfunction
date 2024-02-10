# Upgrade if necessary
execute store result score %uhcp_sLStage uhcp_itemInv run data get storage uhcp:solo_level InventoryWork[0].tag.solo_stage
execute if score @s uhcp_a_tier matches 2..4 if score %uhcp_sLStage uhcp_itemInv matches ..0 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/sword/1
execute if score @s uhcp_a_tier matches 5..6 if score %uhcp_sLStage uhcp_itemInv matches ..1 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/sword/2
execute if score @s uhcp_a_tier matches 7..9 if score %uhcp_sLStage uhcp_itemInv matches ..2 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/sword/3
execute if score @s uhcp_a_tier matches 10 if score %uhcp_sLStage uhcp_itemInv matches ..3 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/sword/4
execute if score @s uhcp_a_tier matches 11..14 if score %uhcp_sLStage uhcp_itemInv matches ..4 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/sword/5
execute if score @s uhcp_a_tier matches 15..17 if score %uhcp_sLStage uhcp_itemInv matches ..5 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/sword/6
execute if score @s uhcp_a_tier matches 18 if score %uhcp_sLStage uhcp_itemInv matches ..6 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/sword/7
