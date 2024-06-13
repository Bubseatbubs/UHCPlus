# Replace array position 14
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[14].Slot
data modify storage uhcp:solo_level Inventory[14] set from storage uhcp:solo_level ItemWork
