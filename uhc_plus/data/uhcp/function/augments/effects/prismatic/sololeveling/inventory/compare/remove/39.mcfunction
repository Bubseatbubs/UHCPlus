# Remove array position 39
data remove storage uhcp:solo_level Inventory[39].Slot
data modify entity @e[tag=UHCP_SLDrop,limit=1] Item set from storage uhcp:solo_level Inventory[39]
data remove storage uhcp:solo_level Inventory[39]
