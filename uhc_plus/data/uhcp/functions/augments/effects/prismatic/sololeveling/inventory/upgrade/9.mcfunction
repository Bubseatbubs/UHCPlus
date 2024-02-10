# Remove array position 9
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[9].Slot
data modify storage uhcp:solo_level Inventory[9] set from storage uhcp:solo_level ItemWork
