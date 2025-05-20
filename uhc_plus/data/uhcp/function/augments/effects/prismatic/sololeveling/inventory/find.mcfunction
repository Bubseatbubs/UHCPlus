# Find normal tools
function uhcp:augments/effects/prismatic/sololeveling/storage
data modify storage uhcp:solo_level InventoryWork set from storage uhcp:solo_level Inventory
execute store result score %sL_slot uhcp_itemCount run data get storage uhcp:solo_level Inventory
execute store result score %sL_tool_tot uhcp_itemCount run data get storage uhcp:solo_level ToolList
execute if score %sL_slot uhcp_itemCount matches 1.. run function uhcp:augments/effects/prismatic/sololeveling/inventory/search

# Mark player for inventory modification
tag @s add UHCP_SLModify
