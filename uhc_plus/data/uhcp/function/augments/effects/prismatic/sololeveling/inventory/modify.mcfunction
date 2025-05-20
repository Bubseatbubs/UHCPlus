# Modify inventory
data remove block 0 0 0 Items
data remove storage uhcp:solo_level Load

# Load 1
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

# Load 2
data remove block 0 0 0 Items
data modify storage uhcp:solo_level Load set value [{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b},{no_slot:1b}]
data modify storage uhcp:solo_level Load[0] set from storage uhcp:solo_level Inventory[{Slot:27b}]
data modify storage uhcp:solo_level Load[1] set from storage uhcp:solo_level Inventory[{Slot:28b}]
data modify storage uhcp:solo_level Load[2] set from storage uhcp:solo_level Inventory[{Slot:29b}]
data modify storage uhcp:solo_level Load[3] set from storage uhcp:solo_level Inventory[{Slot:30b}]
data modify storage uhcp:solo_level Load[4] set from storage uhcp:solo_level Inventory[{Slot:31b}]
data modify storage uhcp:solo_level Load[5] set from storage uhcp:solo_level Inventory[{Slot:32b}]
data modify storage uhcp:solo_level Load[6] set from storage uhcp:solo_level Inventory[{Slot:33b}]
data modify storage uhcp:solo_level Load[7] set from storage uhcp:solo_level Inventory[{Slot:34b}]
data modify storage uhcp:solo_level Load[8] set from storage uhcp:solo_level Inventory[{Slot:35b}]
data modify storage uhcp:solo_level Load[9] set from storage uhcp:solo_level Inventory[{Slot:100b}]
data modify storage uhcp:solo_level Load[10] set from storage uhcp:solo_level Inventory[{Slot:101b}]
data modify storage uhcp:solo_level Load[11] set from storage uhcp:solo_level Inventory[{Slot:102b}]
data modify storage uhcp:solo_level Load[12] set from storage uhcp:solo_level Inventory[{Slot:103b}]
data modify storage uhcp:solo_level Load[13] set from storage uhcp:solo_level Inventory[{Slot:-106b}]
data modify storage uhcp:solo_level Load[0].Slot set value 0b
data modify storage uhcp:solo_level Load[1].Slot set value 1b
data modify storage uhcp:solo_level Load[2].Slot set value 2b
data modify storage uhcp:solo_level Load[3].Slot set value 3b
data modify storage uhcp:solo_level Load[4].Slot set value 4b
data modify storage uhcp:solo_level Load[5].Slot set value 5b
data modify storage uhcp:solo_level Load[6].Slot set value 6b
data modify storage uhcp:solo_level Load[7].Slot set value 7b
data modify storage uhcp:solo_level Load[8].Slot set value 8b
data modify storage uhcp:solo_level Load[9].Slot set value 9b
data modify storage uhcp:solo_level Load[10].Slot set value 10b
data modify storage uhcp:solo_level Load[11].Slot set value 11b
data modify storage uhcp:solo_level Load[12].Slot set value 12b
data modify storage uhcp:solo_level Load[13].Slot set value 13b
data remove storage uhcp:solo_level Load[{no_slot:1b}]
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
