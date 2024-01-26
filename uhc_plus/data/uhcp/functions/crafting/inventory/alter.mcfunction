# Remove one from Count
scoreboard players remove %uhcp_itemLow uhcp_itemCount 1

# Find array position [0..40]
execute if score %uhcp_itemArr uhcp_itemInv matches 0..7 run function uhcp:crafting/inventory/alter/branches/1
execute if score %uhcp_itemArr uhcp_itemInv matches 8..15 run function uhcp:crafting/inventory/alter/branches/2
execute if score %uhcp_itemArr uhcp_itemInv matches 16..23 run function uhcp:crafting/inventory/alter/branches/3
execute if score %uhcp_itemArr uhcp_itemInv matches 24..31 run function uhcp:crafting/inventory/alter/branches/4
execute if score %uhcp_itemArr uhcp_itemInv matches 32..40 run function uhcp:crafting/inventory/alter/branches/5
