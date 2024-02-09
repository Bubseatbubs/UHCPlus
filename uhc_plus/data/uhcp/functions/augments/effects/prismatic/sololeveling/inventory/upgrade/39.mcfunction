# Remove array position 39
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[39].Slot
data modify storage uhcp:solo_level Inventory[39] set from storage uhcp:solo_level ItemWork
