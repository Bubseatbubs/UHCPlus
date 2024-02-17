# Record numbers of items and positions
execute store result score %uhcp_itemRLow uhcp_itemCount run data get storage uhcp:craft InventoryWork[-1].Count
execute if score %uhcp_itemRLow uhcp_itemCount < %uhcp_itemLow uhcp_itemCount run function uhcp:crafting/inventory/lowest
