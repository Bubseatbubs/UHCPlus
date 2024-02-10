# Remove array position 7
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[7].Slot
data modify storage uhcp:solo_level Inventory[7] set from storage uhcp:solo_level ItemWork
