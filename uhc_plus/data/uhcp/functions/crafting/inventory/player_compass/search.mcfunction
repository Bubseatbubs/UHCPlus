# Search every position in array for item
scoreboard players remove %uhcp_itemSlot uhcp_itemInv 1
execute store success score %uhcp_itemB uhcp_itemInv run data modify storage minecraft:uhcp_craft InventoryWork[0].id set value "minecraft:compass"
execute if score %uhcp_itemB uhcp_itemInv matches 0 run function uhcp:crafting/inventory/player_compass/identify
scoreboard players add %uhcp_itemArrC uhcp_itemInv 1
execute if score %uhcp_itemSlot uhcp_itemInv matches 1.. run function uhcp:crafting/inventory/player_compass/shift
