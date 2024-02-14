# Check if tool belongs to solo level
execute store success score %uhcp_sLTool uhcp_itemInv run data modify storage uhcp:solo_level InventoryWork[-1].tag.solo_level set value 1b
execute if score %uhcp_sLTool uhcp_itemInv matches 1 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/remove
