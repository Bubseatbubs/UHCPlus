# Compare current item against tool list
scoreboard players remove %uhcp_sLTool uhcp_itemCount 1
data modify storage uhcp:solo_level IDWork set from storage uhcp:solo_level InventoryWork[0].id
execute store success score %uhcp_sLTool uhcp_itemInv run data modify storage uhcp:solo_level IDWork set from storage uhcp:solo_level ToolListWork[-1]
execute if score %uhcp_sLTool uhcp_itemInv matches 0 run return 1
execute if score %uhcp_sLTool uhcp_itemCount matches ..0 run return 0

# Shift array, compare against next tool
data remove storage uhcp:solo_level ToolListWork[-1]
execute store result score %uhcp_sLFound uhcp_itemInv run function uhcp:augments/effects/prismatic/sololeveling/inventory/compare
