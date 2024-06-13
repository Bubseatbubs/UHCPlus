# Search for tools
scoreboard players remove %sL_slot uhcp_itemCount 1
scoreboard players operation %sL_tool uhcp_itemCount = %sL_tool_tot uhcp_itemCount
data modify storage uhcp:solo_level ToolListWork set from storage uhcp:solo_level ToolList
execute store result score %sL_found uhcp_itemInv run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare
execute if score %sL_found uhcp_itemInv matches 1 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/check
execute if score %sL_slot uhcp_itemCount matches ..0 run return fail

# Run for next slot
data remove storage uhcp:solo_level InventoryWork[-1]
function uhcp:augments/effects/prismatic/sololeveling/inventory/search
