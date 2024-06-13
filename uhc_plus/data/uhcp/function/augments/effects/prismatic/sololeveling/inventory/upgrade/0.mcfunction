# Replace array position 0
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[0].Slot
data modify storage uhcp:solo_level Inventory[0] set from storage uhcp:solo_level ItemWork
