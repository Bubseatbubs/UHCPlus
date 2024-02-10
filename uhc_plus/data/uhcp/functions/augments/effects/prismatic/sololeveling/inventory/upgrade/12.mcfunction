# Remove array position 12
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[12].Slot
data modify storage uhcp:solo_level Inventory[12] set from storage uhcp:solo_level ItemWork
