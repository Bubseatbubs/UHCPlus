# Remove array position 20
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[20].Slot
data modify storage uhcp:solo_level Inventory[20] set from storage uhcp:solo_level ItemWork
