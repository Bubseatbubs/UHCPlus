# Replace array position 10
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[10].Slot
data modify storage uhcp:solo_level Inventory[10] set from storage uhcp:solo_level ItemWork
