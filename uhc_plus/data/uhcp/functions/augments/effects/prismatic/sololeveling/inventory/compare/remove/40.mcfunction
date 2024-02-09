# Remove array position 40
data remove storage uhcp:solo_level Inventory[40].Slot
data modify entity @e[tag=UHCP_SLDrop,limit=1] Item set from storage uhcp:solo_level Inventory[40]
data remove storage uhcp:solo_level Inventory[40]
