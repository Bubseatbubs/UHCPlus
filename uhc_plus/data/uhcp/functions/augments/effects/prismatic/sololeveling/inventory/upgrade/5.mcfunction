# Remove array position 5
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[5].Slot
data modify storage uhcp:solo_level Inventory[5] set from storage uhcp:solo_level ItemWork
