# Record numbers of compasses and positions
execute store result score %uhcp_compassRLow uhcp_itemCount run data get storage minecraft:uhcp_compass InventoryWork[0].Count
execute if score %uhcp_compassRLow uhcp_itemCount < %uhcp_compassLow uhcp_itemCount run function uhcp:compass/inventory/lowest
