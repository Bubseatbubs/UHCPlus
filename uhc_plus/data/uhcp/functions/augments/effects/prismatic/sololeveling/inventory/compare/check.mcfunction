# Check if tool belongs to solo level
execute store success score %sL_tool uhcp_itemInv run data modify storage uhcp:solo_level InventoryWork[-1].components."minecraft:custom_data".solo_level set value 1b
execute if score %sL_tool uhcp_itemInv matches 1 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove
