# Replace array position 23
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[23].Slot
data modify storage uhcp:solo_level Inventory[23] set from storage uhcp:solo_level ItemWork
