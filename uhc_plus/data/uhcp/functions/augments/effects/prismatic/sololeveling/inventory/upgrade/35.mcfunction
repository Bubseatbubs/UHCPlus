# Remove array position 35
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[35].Slot
data modify storage uhcp:solo_level Inventory[35] set from storage uhcp:solo_level ItemWork
