# Check if item needs upgraded
execute store result score %sL_item uhcp_itemInv run data get storage uhcp:solo_level InventoryWork[-1].components."minecraft:custom_data".solo_item
execute if score %sL_item uhcp_itemInv matches 0..4 run return run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/branches/1
execute if score %sL_item uhcp_itemInv matches 5..9 run function uhcp:augments/effects/prismatic/sololeveling/inventory/upgrade/check/branches/2
