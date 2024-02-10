# Remove array position 15
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[15].Slot
data modify storage uhcp:solo_level Inventory[15] set from storage uhcp:solo_level ItemWork
