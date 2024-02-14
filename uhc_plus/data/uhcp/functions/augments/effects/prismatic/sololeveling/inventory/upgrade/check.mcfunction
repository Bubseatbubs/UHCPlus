# Check if item needs upgraded
execute store result score %uhcp_sLItem uhcp_itemInv run data get storage uhcp:solo_level InventoryWork[-1].tag.solo_item
execute if score %uhcp_sLItem uhcp_itemInv matches 0..4 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/branches/1
execute if score %uhcp_sLItem uhcp_itemInv matches 5..9 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/branches/2
