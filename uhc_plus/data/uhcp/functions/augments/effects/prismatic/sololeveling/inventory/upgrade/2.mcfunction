# Remove array position 2
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[2].Slot
data modify storage uhcp:solo_level Inventory[2] set from storage uhcp:solo_level ItemWork
