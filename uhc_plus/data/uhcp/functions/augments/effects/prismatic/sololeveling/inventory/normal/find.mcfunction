# Find normal tools
#scoreboard players set    0
data modify storage minecraft:uhcp_solo_level Inventory set from entity @s Inventory
data modify storage minecraft:uhcp_solo_level InventoryWork set from storage minecraft:uhcp_solo_level Inventory
data modify storage minecraft:uhcp_solo_level ToolListWork set from storage minecraft:uhcp_solo_level ToolList
