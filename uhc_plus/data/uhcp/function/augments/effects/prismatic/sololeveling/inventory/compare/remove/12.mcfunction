# Remove array position 12
data remove storage uhcp:solo_level Inventory[12].Slot
data modify entity @e[tag=UHCP_SLDrop,limit=1] Item set from storage uhcp:solo_level Inventory[12]
data remove storage uhcp:solo_level Inventory[12]
