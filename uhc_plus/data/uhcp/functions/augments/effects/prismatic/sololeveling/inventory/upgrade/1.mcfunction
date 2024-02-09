# Remove array position 1
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[1].Slot
data modify storage uhcp:solo_level Inventory[1] set from storage uhcp:solo_level ItemWork
