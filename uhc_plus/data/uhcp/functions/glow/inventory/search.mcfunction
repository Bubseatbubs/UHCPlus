# Search every position in array for ender eyes
scoreboard players remove %uhcp_ender_eyeSlot uhcp_itemInv 1
execute store success score %uhcp_ender_eyeB uhcp_itemInv run data modify storage minecraft:uhcp_ender_eye InventoryWork[0].id set value "minecraft:ender_eye"
execute if score %uhcp_ender_eyeB uhcp_itemInv matches 0 run function uhcp:glow/inventory/identify
scoreboard players add %uhcp_ender_eyeArrC uhcp_itemInv 1
execute if score %uhcp_ender_eyeSlot uhcp_itemInv matches 1.. run function uhcp:glow/inventory/shift
