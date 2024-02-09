# Remove array position 40
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[40].Slot
data modify storage uhcp:solo_level Inventory[40] set from storage uhcp:solo_level ItemWork
