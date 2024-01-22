# Find slot with lowest number of normal ender eyes
data modify storage minecraft:uhcp_ender_eye InventoryWork set from storage minecraft:uhcp_ender_eye Inventory
execute store result score %uhcp_ender_eyeSlot uhcp_itemInv run data get storage minecraft:uhcp_ender_eye Inventory
scoreboard players set %uhcp_ender_eye uhcp_itemCount 0
scoreboard players set %uhcp_ender_eyeArrC uhcp_itemInv 0
execute if score %uhcp_ender_eyeSlot uhcp_itemInv matches 1.. run function uhcp:glow/inventory/search
execute unless score %uhcp_ender_eyeTot uhcp_itemCount > %uhcp_ender_eye uhcp_itemCount if score %uhcp_ender_eyeLow uhcp_itemCount matches 1..64 run function uhcp:glow/inventory/alter
execute if score %uhcp_ender_eyeTot uhcp_itemCount > %uhcp_ender_eye uhcp_itemCount run scoreboard players set %uhcp_ender_eyeLow uhcp_itemCount 1
