# Remove one ender eye from inventory
data modify storage minecraft:uhcp_craft Inventory set from entity @s Inventory
execute if predicate uhcp:ender_eye/ender_eye run function uhcp:crafting/inventory/glow/find
execute unless predicate uhcp:ender_eye/ender_eye run scoreboard players set %uhcp_itemLow uhcp_itemCount 1
clear @s minecraft:ender_eye
execute in uhcp:main run function uhcp:crafting/inventory/load
