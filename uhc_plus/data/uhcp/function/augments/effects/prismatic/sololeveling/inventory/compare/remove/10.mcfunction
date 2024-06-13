# Remove array position 10
data remove storage uhcp:solo_level Inventory[10].Slot
data modify entity @e[tag=UHCP_SLDrop,limit=1] Item set from storage uhcp:solo_level Inventory[10]
data remove storage uhcp:solo_level Inventory[10]
