# Replace array position 31
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[31].Slot
data modify storage uhcp:solo_level Inventory[31] set from storage uhcp:solo_level ItemWork
