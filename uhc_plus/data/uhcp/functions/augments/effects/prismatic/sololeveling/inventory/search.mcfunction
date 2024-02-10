# Search for tools
scoreboard players remove %uhcp_sLSlot uhcp_itemCount 1
scoreboard players operation %uhcp_sLTool uhcp_itemCount = %uhcp_sLToolTot uhcp_itemCount
data modify storage uhcp:solo_level ToolListWork set from storage uhcp:solo_level ToolList
execute store result score %uhcp_sLFound uhcp_itemInv run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare
execute if score %uhcp_sLFound uhcp_itemInv matches 1 run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare/check
execute if score %uhcp_sLSlot uhcp_itemCount matches ..0 run return fail

# Run for next slot
scoreboard players add %uhcp_sLSlot uhcp_itemInv 1
data remove storage uhcp:solo_level InventoryWork[0]
function uhcp:augments/effects/prismatic/sololeveling/inventory/search
