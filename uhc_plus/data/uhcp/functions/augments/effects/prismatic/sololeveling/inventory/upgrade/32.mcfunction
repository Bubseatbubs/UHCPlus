# Remove array position 32
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[32].Slot
data modify storage uhcp:solo_level Inventory[32] set from storage uhcp:solo_level ItemWork
