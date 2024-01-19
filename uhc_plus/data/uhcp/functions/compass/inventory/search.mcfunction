# Search every position in array for compasses
scoreboard players remove %uhcp_compassSlot uhcp_itemInv 1
execute store success score %uhcp_compassB uhcp_itemInv run data modify storage minecraft:uhcp_compass InventoryWork[0].id set value "minecraft:compass"
execute if score %uhcp_compassB uhcp_itemInv matches 0 run function uhcp:compass/inventory/identify
scoreboard players add %uhcp_compassArrC uhcp_itemInv 1
execute if score %uhcp_compassSlot uhcp_itemInv matches 1.. run function uhcp:compass/inventory/shift
