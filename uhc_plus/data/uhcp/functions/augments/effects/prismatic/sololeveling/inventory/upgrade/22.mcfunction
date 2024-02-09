# Remove array position 22
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[22].Slot
data modify storage uhcp:solo_level Inventory[22] set from storage uhcp:solo_level ItemWork
