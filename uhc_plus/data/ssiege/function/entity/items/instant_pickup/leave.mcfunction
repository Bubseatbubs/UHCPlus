# Let item be freely dropped on death
data remove entity @e[tag=UHCP_BeingPickedUp,limit=1] Item.components."minecraft:custom_data".uhcp_instantpickup

# Remove solo leveling items from solo leveling system
data remove entity @e[tag=UHCP_BeingPickedUp,limit=1] Item.components."minecraft:custom_data".solo_level
