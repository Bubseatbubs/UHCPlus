# Replace array position 16
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[16].Slot
data modify storage uhcp:solo_level Inventory[16] set from storage uhcp:solo_level ItemWork
