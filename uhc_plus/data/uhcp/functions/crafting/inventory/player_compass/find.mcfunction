# Find slot with lowest number of normal items
data modify storage uhcp:craft InventoryWork set from storage uhcp:craft Inventory
execute store result score %uhcp_itemSlot uhcp_itemInv run data get storage uhcp:craft Inventory
scoreboard players set %uhcp_item uhcp_itemCount 0
scoreboard players set %uhcp_itemArrC uhcp_itemInv 0
execute if score %uhcp_itemSlot uhcp_itemInv matches 1.. run function uhcp:crafting/inventory/player_compass/search
execute unless score %uhcp_itemTot uhcp_itemCount > %uhcp_item uhcp_itemCount if score %uhcp_itemLow uhcp_itemCount matches 1..64 run function uhcp:crafting/inventory/alter
execute if score %uhcp_itemTot uhcp_itemCount > %uhcp_item uhcp_itemCount run scoreboard players set %uhcp_itemLow uhcp_itemCount 1
