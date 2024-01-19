# Identify compass type
execute store result score %uhcp_compass uhcp_initStatus run data get storage minecraft:uhcp_compass InventoryWork[0].Count
scoreboard players operation %uhcp_compass uhcp_itemCount += %uhcp_compass uhcp_initStatus
execute store success score %uhcp_compassB uhcp_itemInv run data modify storage minecraft:uhcp_compass InventoryWork[0].tag.player set value 1b
execute if score %uhcp_compassB uhcp_itemInv matches 1 run function uhcp:compass/inventory/record
