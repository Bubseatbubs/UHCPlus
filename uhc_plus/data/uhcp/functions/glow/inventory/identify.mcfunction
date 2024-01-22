# Identify ender eye type
execute store result score %uhcp_ender_eye uhcp_initStatus run data get storage minecraft:uhcp_ender_eye InventoryWork[0].Count
scoreboard players operation %uhcp_ender_eye uhcp_itemCount += %uhcp_ender_eye uhcp_initStatus
scoreboard players set %uhcp_ender_eyeB uhcp_itemInv 1
execute store success score %uhcp_ender_eyeB uhcp_itemInv run data modify storage minecraft:uhcp_ender_eye InventoryWork[0].tag.uhcp_sight set value 1b
execute if score %uhcp_ender_eyeB uhcp_itemInv matches 1 run function uhcp:glow/inventory/record
