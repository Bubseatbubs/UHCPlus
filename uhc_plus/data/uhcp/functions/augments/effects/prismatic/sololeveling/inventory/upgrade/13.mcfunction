# Remove array position 13
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[13].Slot
data modify storage uhcp:solo_level Inventory[13] set from storage uhcp:solo_level ItemWork
