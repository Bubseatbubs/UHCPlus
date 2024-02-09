# Remove array position 25
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[25].Slot
data modify storage uhcp:solo_level Inventory[25] set from storage uhcp:solo_level ItemWork
