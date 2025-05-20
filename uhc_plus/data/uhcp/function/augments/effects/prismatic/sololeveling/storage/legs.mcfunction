# Append legs
data modify storage uhcp:solo_level equipment.legs.Slot set value 101b
data modify storage uhcp:solo_level Inventory append from storage uhcp:solo_level equipment.legs
