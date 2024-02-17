# Search every position in array for item
scoreboard players remove %uhcp_itemSlot uhcp_itemInv 1
execute store success score %uhcp_itemB uhcp_itemInv run data modify storage uhcp:craft InventoryWork[-1].id set value "minecraft:compass"
execute if score %uhcp_itemB uhcp_itemInv matches 0 run function uhcp:crafting/inventory/player_compass/identify
execute if score %uhcp_itemSlot uhcp_itemInv matches ..0 run return fail

# Run for next slot
data remove storage uhcp:craft InventoryWork[-1]
function uhcp:crafting/inventory/player_compass/search
