# Identify item type
execute store result score %uhcp_item uhcp_initStatus run data get storage minecraft:uhcp_craft InventoryWork[0].Count
scoreboard players operation %uhcp_item uhcp_itemCount += %uhcp_item uhcp_initStatus
scoreboard players set %uhcp_itemB uhcp_itemInv 1
execute store success score %uhcp_itemB uhcp_itemInv run data modify storage minecraft:uhcp_craft InventoryWork[0].tag.uhcp_sight set value 1b
execute if score %uhcp_itemB uhcp_itemInv matches 1 run function uhcp:crafting/inventory/record