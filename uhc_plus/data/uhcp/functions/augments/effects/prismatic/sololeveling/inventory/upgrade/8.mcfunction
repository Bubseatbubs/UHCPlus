# Replace array position 8
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[8].Slot
data modify storage uhcp:solo_level Inventory[8] set from storage uhcp:solo_level ItemWork
