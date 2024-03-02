# Return if recently run
execute if score @s uhcp_lavaCurrentLayers matches 1.. run return fail

# Modify inventory
setblock 0 0 0 minecraft:barrel
data remove block 0 0 0 Items
data remove storage uhcp:solo_level Load

#Load 1
data modify block 0 0 0 Items set from storage uhcp:solo_level Inventory
item replace entity @s container.0 from block 0 0 0 container.0
item replace entity @s container.1 from block 0 0 0 container.1
item replace entity @s container.2 from block 0 0 0 container.2
item replace entity @s container.3 from block 0 0 0 container.3
item replace entity @s container.4 from block 0 0 0 container.4
item replace entity @s container.5 from block 0 0 0 container.5
item replace entity @s container.6 from block 0 0 0 container.6
item replace entity @s container.7 from block 0 0 0 container.7
item replace entity @s container.8 from block 0 0 0 container.8
item replace entity @s container.9 from block 0 0 0 container.9
item replace entity @s container.10 from block 0 0 0 container.10
item replace entity @s container.11 from block 0 0 0 container.11
item replace entity @s container.12 from block 0 0 0 container.12
item replace entity @s container.13 from block 0 0 0 container.13
item replace entity @s container.14 from block 0 0 0 container.14
item replace entity @s container.15 from block 0 0 0 container.15
item replace entity @s container.16 from block 0 0 0 container.16
item replace entity @s container.17 from block 0 0 0 container.17
item replace entity @s container.18 from block 0 0 0 container.18
item replace entity @s container.19 from block 0 0 0 container.19
item replace entity @s container.20 from block 0 0 0 container.20
item replace entity @s container.21 from block 0 0 0 container.21
item replace entity @s container.22 from block 0 0 0 container.22
item replace entity @s container.23 from block 0 0 0 container.23
item replace entity @s container.24 from block 0 0 0 container.24
item replace entity @s container.25 from block 0 0 0 container.25
item replace entity @s container.26 from block 0 0 0 container.26

#return fail
#Load 2
data remove block 0 0 0 Items
data modify storage uhcp:solo_level Load[{Slot:0b}].id set from storage uhcp:solo_level Inventory[{Slot:27b}].id
data modify storage uhcp:solo_level Load[{Slot:0b}].components set from storage uhcp:solo_level Inventory[{Slot:27b}].components
data modify storage uhcp:solo_level Load[{Slot:0b}].count set from storage uhcp:solo_level Inventory[{Slot:27b}].count
data modify storage uhcp:solo_level Load[{Slot:1b}].id set from storage uhcp:solo_level Inventory[{Slot:28b}].id
data modify storage uhcp:solo_level Load[{Slot:1b}].components set from storage uhcp:solo_level Inventory[{Slot:28b}].components
data modify storage uhcp:solo_level Load[{Slot:1b}].count set from storage uhcp:solo_level Inventory[{Slot:28b}].count
data modify storage uhcp:solo_level Load[{Slot:2b}].id set from storage uhcp:solo_level Inventory[{Slot:29b}].id
data modify storage uhcp:solo_level Load[{Slot:2b}].components set from storage uhcp:solo_level Inventory[{Slot:29b}].components
data modify storage uhcp:solo_level Load[{Slot:2b}].count set from storage uhcp:solo_level Inventory[{Slot:29b}].count
data modify storage uhcp:solo_level Load[{Slot:3b}].id set from storage uhcp:solo_level Inventory[{Slot:30b}].id
data modify storage uhcp:solo_level Load[{Slot:3b}].components set from storage uhcp:solo_level Inventory[{Slot:30b}].components
data modify storage uhcp:solo_level Load[{Slot:3b}].count set from storage uhcp:solo_level Inventory[{Slot:30b}].count
data modify storage uhcp:solo_level Load[{Slot:4b}].id set from storage uhcp:solo_level Inventory[{Slot:31b}].id
data modify storage uhcp:solo_level Load[{Slot:4b}].components set from storage uhcp:solo_level Inventory[{Slot:31b}].components
data modify storage uhcp:solo_level Load[{Slot:4b}].count set from storage uhcp:solo_level Inventory[{Slot:31b}].count
data modify storage uhcp:solo_level Load[{Slot:5b}].id set from storage uhcp:solo_level Inventory[{Slot:32b}].id
data modify storage uhcp:solo_level Load[{Slot:5b}].components set from storage uhcp:solo_level Inventory[{Slot:32b}].components
data modify storage uhcp:solo_level Load[{Slot:5b}].count set from storage uhcp:solo_level Inventory[{Slot:32b}].count
data modify storage uhcp:solo_level Load[{Slot:6b}].id set from storage uhcp:solo_level Inventory[{Slot:33b}].id
data modify storage uhcp:solo_level Load[{Slot:6b}].components set from storage uhcp:solo_level Inventory[{Slot:33b}].components
data modify storage uhcp:solo_level Load[{Slot:6b}].count set from storage uhcp:solo_level Inventory[{Slot:33b}].count
data modify storage uhcp:solo_level Load[{Slot:7b}].id set from storage uhcp:solo_level Inventory[{Slot:34b}].id
data modify storage uhcp:solo_level Load[{Slot:7b}].components set from storage uhcp:solo_level Inventory[{Slot:34b}].components
data modify storage uhcp:solo_level Load[{Slot:7b}].count set from storage uhcp:solo_level Inventory[{Slot:34b}].count
data modify storage uhcp:solo_level Load[{Slot:8b}].id set from storage uhcp:solo_level Inventory[{Slot:35b}].id
data modify storage uhcp:solo_level Load[{Slot:8b}].components set from storage uhcp:solo_level Inventory[{Slot:35b}].components
data modify storage uhcp:solo_level Load[{Slot:8b}].count set from storage uhcp:solo_level Inventory[{Slot:35b}].count
data modify storage uhcp:solo_level Load[{Slot:9b}].id set from storage uhcp:solo_level Inventory[{Slot:100b}].id
data modify storage uhcp:solo_level Load[{Slot:9b}].components set from storage uhcp:solo_level Inventory[{Slot:100b}].components
data modify storage uhcp:solo_level Load[{Slot:9b}].count set from storage uhcp:solo_level Inventory[{Slot:100b}].count
data modify storage uhcp:solo_level Load[{Slot:10b}].id set from storage uhcp:solo_level Inventory[{Slot:101b}].id
data modify storage uhcp:solo_level Load[{Slot:10b}].components set from storage uhcp:solo_level Inventory[{Slot:101b}].components
data modify storage uhcp:solo_level Load[{Slot:10b}].count set from storage uhcp:solo_level Inventory[{Slot:101b}].count
data modify storage uhcp:solo_level Load[{Slot:11b}].id set from storage uhcp:solo_level Inventory[{Slot:102b}].id
data modify storage uhcp:solo_level Load[{Slot:11b}].components set from storage uhcp:solo_level Inventory[{Slot:102b}].components
data modify storage uhcp:solo_level Load[{Slot:11b}].count set from storage uhcp:solo_level Inventory[{Slot:102b}].count
data modify storage uhcp:solo_level Load[{Slot:12b}].id set from storage uhcp:solo_level Inventory[{Slot:103b}].id
data modify storage uhcp:solo_level Load[{Slot:12b}].components set from storage uhcp:solo_level Inventory[{Slot:103b}].components
data modify storage uhcp:solo_level Load[{Slot:12b}].count set from storage uhcp:solo_level Inventory[{Slot:103b}].count
data modify storage uhcp:solo_level Load[{Slot:13b}].id set from storage uhcp:solo_level Inventory[{Slot:-106b}].id
data modify storage uhcp:solo_level Load[{Slot:13b}].components set from storage uhcp:solo_level Inventory[{Slot:-106b}].components
data modify storage uhcp:solo_level Load[{Slot:13b}].count set from storage uhcp:solo_level Inventory[{Slot:-106b}].count
data modify block 0 0 0 Items set from storage uhcp:solo_level Load
item replace entity @s container.27 from block 0 0 0 container.0
item replace entity @s container.28 from block 0 0 0 container.1
item replace entity @s container.29 from block 0 0 0 container.2
item replace entity @s container.30 from block 0 0 0 container.3
item replace entity @s container.31 from block 0 0 0 container.4
item replace entity @s container.32 from block 0 0 0 container.5
item replace entity @s container.33 from block 0 0 0 container.6
item replace entity @s container.34 from block 0 0 0 container.7
item replace entity @s container.35 from block 0 0 0 container.8
item replace entity @s armor.feet from block 0 0 0 container.9
item replace entity @s armor.legs from block 0 0 0 container.10
item replace entity @s armor.chest from block 0 0 0 container.11
item replace entity @s armor.head from block 0 0 0 container.12
item replace entity @s weapon.offhand from block 0 0 0 container.13

# Remove tag
tag @s remove UHCP_SLModify
