# Replace array position 29
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[29].Slot
data modify storage uhcp:solo_level Inventory[29] set from storage uhcp:solo_level ItemWork
