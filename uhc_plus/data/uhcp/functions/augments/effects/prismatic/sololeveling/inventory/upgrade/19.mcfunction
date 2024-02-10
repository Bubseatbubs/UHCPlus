# Remove array position 19
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[19].Slot
data modify storage uhcp:solo_level Inventory[19] set from storage uhcp:solo_level ItemWork
