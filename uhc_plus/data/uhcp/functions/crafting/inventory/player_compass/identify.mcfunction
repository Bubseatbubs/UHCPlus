# Identify item type
execute store result score %uhcp_item uhcp_initStatus run data get storage uhcp:craft InventoryWork[-1].count
execute if score %uhcp_item uhcp_initStatus matches 0 run scoreboard players set %uhcp_item uhcp_initStatus 1
scoreboard players operation %uhcp_item uhcp_itemCount += %uhcp_item uhcp_initStatus
scoreboard players set %uhcp_itemB uhcp_itemInv 1
execute store success score %uhcp_itemB0 uhcp_itemInv run data modify storage uhcp:craft InventoryWork[-1].components."minecraft:custom_data".uhcp_player set value 1b
execute if score %uhcp_itemB0 uhcp_itemInv matches 0 run scoreboard players set %uhcp_itemB uhcp_itemInv 0
execute store success score %uhcp_itemB0 uhcp_itemInv run execute if data storage uhcp:craft InventoryWork[-1].components."minecraft:lodestone_target"
execute if score %uhcp_itemB0 uhcp_itemInv matches 1 run scoreboard players set %uhcp_itemB uhcp_itemInv 0
execute if score %uhcp_itemB uhcp_itemInv matches 1 if score %uhcp_item uhcp_initStatus < %uhcp_itemLow uhcp_itemCount run function uhcp:crafting/inventory/record
