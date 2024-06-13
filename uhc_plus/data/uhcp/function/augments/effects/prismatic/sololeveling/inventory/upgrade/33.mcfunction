# Replace array position 33
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[33].Slot
data modify storage uhcp:solo_level Inventory[33] set from storage uhcp:solo_level ItemWork
