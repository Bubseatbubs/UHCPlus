# Replace array position 37
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[37].Slot
data modify storage uhcp:solo_level Inventory[37] set from storage uhcp:solo_level ItemWork
