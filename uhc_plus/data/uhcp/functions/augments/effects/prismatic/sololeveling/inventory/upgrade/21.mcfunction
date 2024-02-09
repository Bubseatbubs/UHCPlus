# Remove array position 21
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[21].Slot
data modify storage uhcp:solo_level Inventory[21] set from storage uhcp:solo_level ItemWork
