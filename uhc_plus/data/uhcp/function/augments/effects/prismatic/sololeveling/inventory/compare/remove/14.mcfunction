# Remove array position 14
data remove storage uhcp:solo_level Inventory[14].Slot
data modify entity @e[tag=UHCP_SLDrop,limit=1] Item set from storage uhcp:solo_level Inventory[14]
data remove storage uhcp:solo_level Inventory[14]
