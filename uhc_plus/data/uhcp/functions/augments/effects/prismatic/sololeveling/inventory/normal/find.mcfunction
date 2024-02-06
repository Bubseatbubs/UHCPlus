# Find normal tools
scoreboard players set %uhcp_sLSlot uhcp_itemInv 0
data modify storage uhcp:solo_level Inventory set from entity @s Inventory
data modify storage uhcp:solo_level InventoryWork set from storage uhcp:solo_level Inventory
data modify storage uhcp:solo_level ToolListWork set from storage uhcp:solo_level ToolList
