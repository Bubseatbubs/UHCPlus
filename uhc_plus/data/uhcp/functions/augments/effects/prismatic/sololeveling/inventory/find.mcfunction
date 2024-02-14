# Find normal tools
data modify storage uhcp:solo_level Inventory set from entity @s Inventory
data modify storage uhcp:solo_level InventoryWork set from storage uhcp:solo_level Inventory
execute store result score %uhcp_sLSlot uhcp_itemCount run data get storage uhcp:solo_level Inventory
execute store result score %uhcp_sLToolTot uhcp_itemCount run data get storage uhcp:solo_level ToolList
execute if score %uhcp_sLSlot uhcp_itemCount matches 1.. run function uhcp:augments/effects/prismatic/sololeveling/inventory/search

# Mark player for inventory modification
tag @s add UHCP_SLModify
