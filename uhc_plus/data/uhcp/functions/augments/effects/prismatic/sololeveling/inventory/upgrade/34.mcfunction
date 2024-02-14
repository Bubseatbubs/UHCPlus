# Replace array position 34
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[34].Slot
data modify storage uhcp:solo_level Inventory[34] set from storage uhcp:solo_level ItemWork
