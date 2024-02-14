# Replace array position 24
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[24].Slot
data modify storage uhcp:solo_level Inventory[24] set from storage uhcp:solo_level ItemWork
