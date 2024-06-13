# Replace array position 26
data modify storage uhcp:solo_level ItemWork.Slot set from storage uhcp:solo_level Inventory[26].Slot
data modify storage uhcp:solo_level Inventory[26] set from storage uhcp:solo_level ItemWork
