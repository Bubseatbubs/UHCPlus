# Replace array position 36
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[36].Slot
data modify storage uhcp:solo_level Inventory[36] set from storage uhcp:solo_level ItemWork
