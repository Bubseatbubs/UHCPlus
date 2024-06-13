# Replace array position 11
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[11].Slot
data modify storage uhcp:solo_level Inventory[11] set from storage uhcp:solo_level ItemWork
