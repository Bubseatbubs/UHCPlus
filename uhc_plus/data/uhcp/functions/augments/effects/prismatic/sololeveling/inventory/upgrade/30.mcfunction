# Remove array position 30
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[30].Slot
data modify storage uhcp:solo_level Inventory[30] set from storage uhcp:solo_level ItemWork
