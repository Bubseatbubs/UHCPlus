# Find slot with lowest number of non-player compasses
data modify storage minecraft:uhcp_compass InventoryWork set from storage minecraft:uhcp_compass Inventory
execute store result score %uhcp_compassSlot uhcp_itemInv run data get storage minecraft:uhcp_compass Inventory
scoreboard players set %uhcp_compass uhcp_itemCount 0
scoreboard players set %uhcp_compassArrC uhcp_itemInv 0
execute if score %uhcp_compassSlot uhcp_itemInv matches 1.. run function uhcp:compass/inventory/search
execute unless score %uhcp_compassTot uhcp_itemCount > %uhcp_compass uhcp_itemCount if score %uhcp_compassLow uhcp_itemCount matches 1..64 run function uhcp:compass/inventory/alter
