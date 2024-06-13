# Replace array position 38
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[38].Slot
data modify storage uhcp:solo_level Inventory[38] set from storage uhcp:solo_level ItemWork
