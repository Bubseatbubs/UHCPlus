# Remove array position 4
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[4].Slot
data modify storage uhcp:solo_level Inventory[4] set from storage uhcp:solo_level ItemWork
