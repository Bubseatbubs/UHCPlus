# Record numbers of items and positions
execute store result score %uhcp_itemRLow uhcp_itemCount run data get storage minecraft:uhcp_craft InventoryWork[0].Count
execute if score %uhcp_itemRLow uhcp_itemCount < %uhcp_itemLow uhcp_itemCount run function uhcp:crafting/inventory/lowest
