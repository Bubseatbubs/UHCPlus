# Remove array position 3
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[3].Slot
data modify storage uhcp:solo_level Inventory[3] set from storage uhcp:solo_level ItemWork
