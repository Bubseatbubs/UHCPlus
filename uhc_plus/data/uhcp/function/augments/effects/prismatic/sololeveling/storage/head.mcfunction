# Append head
data modify storage uhcp:solo_level equipment.head.Slot set value 103b
data modify storage uhcp:solo_level Inventory append from storage uhcp:solo_level equipment.head
