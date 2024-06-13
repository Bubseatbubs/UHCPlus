# Remove array position 9
data remove storage uhcp:solo_level Inventory[9].Slot
data modify entity @e[tag=UHCP_SLDrop,limit=1] Item set from storage uhcp:solo_level Inventory[9]
data remove storage uhcp:solo_level Inventory[9]
