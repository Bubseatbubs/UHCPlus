# Record numbers of ender eyes and positions
execute store result score %uhcp_ender_eyeRLow uhcp_itemCount run data get storage minecraft:uhcp_ender_eye InventoryWork[0].Count
execute if score %uhcp_ender_eyeRLow uhcp_itemCount < %uhcp_ender_eyeLow uhcp_itemCount run function uhcp:glow/inventory/lowest
