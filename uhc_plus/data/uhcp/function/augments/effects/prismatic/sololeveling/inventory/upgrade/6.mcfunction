# Replace array position 6
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[6].Slot
data modify storage uhcp:solo_level Inventory[6] set from storage uhcp:solo_level ItemWork
