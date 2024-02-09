# Remove array position 28
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[28].Slot
data modify storage uhcp:solo_level Inventory[28] set from storage uhcp:solo_level ItemWork
