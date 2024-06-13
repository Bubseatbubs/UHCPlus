# Replace array position 18
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[18].Slot
data modify storage uhcp:solo_level Inventory[18] set from storage uhcp:solo_level ItemWork
