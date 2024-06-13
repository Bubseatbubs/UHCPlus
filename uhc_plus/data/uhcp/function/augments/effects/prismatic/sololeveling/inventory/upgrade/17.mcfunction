# Replace array position 17
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[17].Slot
data modify storage uhcp:solo_level Inventory[17] set from storage uhcp:solo_level ItemWork
