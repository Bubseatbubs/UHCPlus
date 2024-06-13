# Replace array position 27
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[27].Slot
data modify storage uhcp:solo_level Inventory[27] set from storage uhcp:solo_level ItemWork
