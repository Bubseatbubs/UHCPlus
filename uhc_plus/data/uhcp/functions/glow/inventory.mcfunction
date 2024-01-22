# Remove one ender eye from inventory (somewhat involved)
data modify storage minecraft:uhcp_ender_eye Inventory set from entity @s Inventory
execute if predicate uhcp:ender_eye/ender_eye run function uhcp:glow/inventory/find
execute unless predicate uhcp:ender_eye/ender_eye run scoreboard players set %uhcp_ender_eyeLow uhcp_itemCount 1
clear @s minecraft:ender_eye
setblock 0 -64 0 minecraft:barrel
data remove block 0 -64 0 Items
data remove storage minecraft:uhcp_ender_eye Load

#Load 1
data modify block 0 -64 0 Items set from storage minecraft:uhcp_ender_eye Inventory
item replace entity @s container.0 from block 0 -64 0 container.0
item replace entity @s container.1 from block 0 -64 0 container.1
item replace entity @s container.2 from block 0 -64 0 container.2
item replace entity @s container.3 from block 0 -64 0 container.3
item replace entity @s container.4 from block 0 -64 0 container.4
item replace entity @s container.5 from block 0 -64 0 container.5
item replace entity @s container.6 from block 0 -64 0 container.6
item replace entity @s container.7 from block 0 -64 0 container.7
item replace entity @s container.8 from block 0 -64 0 container.8
item replace entity @s container.9 from block 0 -64 0 container.9
item replace entity @s container.10 from block 0 -64 0 container.10
item replace entity @s container.11 from block 0 -64 0 container.11
item replace entity @s container.12 from block 0 -64 0 container.12
item replace entity @s container.13 from block 0 -64 0 container.13
item replace entity @s container.14 from block 0 -64 0 container.14
item replace entity @s container.15 from block 0 -64 0 container.15
item replace entity @s container.16 from block 0 -64 0 container.16
item replace entity @s container.17 from block 0 -64 0 container.17
item replace entity @s container.18 from block 0 -64 0 container.18
item replace entity @s container.19 from block 0 -64 0 container.19
item replace entity @s container.20 from block 0 -64 0 container.20
item replace entity @s container.21 from block 0 -64 0 container.21
item replace entity @s container.22 from block 0 -64 0 container.22
item replace entity @s container.23 from block 0 -64 0 container.23
item replace entity @s container.24 from block 0 -64 0 container.24
item replace entity @s container.25 from block 0 -64 0 container.25
item replace entity @s container.26 from block 0 -64 0 container.26

#Load 2
data remove block 0 -64 0 Items
data modify storage minecraft:uhcp_ender_eye Load[{Slot:0b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:27b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:0b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:27b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:0b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:27b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:1b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:28b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:1b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:28b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:1b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:28b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:2b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:29b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:2b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:29b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:2b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:29b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:3b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:30b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:3b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:30b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:3b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:30b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:4b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:31b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:4b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:31b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:4b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:31b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:5b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:32b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:5b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:32b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:5b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:32b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:6b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:33b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:6b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:33b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:6b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:33b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:7b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:34b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:7b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:34b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:7b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:34b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:8b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:35b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:8b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:35b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:8b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:35b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:9b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:100b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:9b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:100b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:9b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:100b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:10b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:101b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:10b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:101b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:10b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:101b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:11b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:102b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:11b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:102b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:11b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:102b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:12b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:103b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:12b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:103b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:12b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:103b}].Count
data modify storage minecraft:uhcp_ender_eye Load[{Slot:13b}].id set from storage minecraft:uhcp_ender_eye Inventory[{Slot:-106b}].id
data modify storage minecraft:uhcp_ender_eye Load[{Slot:13b}].tag set from storage minecraft:uhcp_ender_eye Inventory[{Slot:-106b}].tag
data modify storage minecraft:uhcp_ender_eye Load[{Slot:13b}].Count set from storage minecraft:uhcp_ender_eye Inventory[{Slot:-106b}].Count
data modify block 0 -64 0 Items set from storage minecraft:uhcp_ender_eye Load
item replace entity @s container.27 from block 0 -64 0 container.0
item replace entity @s container.28 from block 0 -64 0 container.1
item replace entity @s container.29 from block 0 -64 0 container.2
item replace entity @s container.30 from block 0 -64 0 container.3
item replace entity @s container.31 from block 0 -64 0 container.4
item replace entity @s container.32 from block 0 -64 0 container.5
item replace entity @s container.33 from block 0 -64 0 container.6
item replace entity @s container.34 from block 0 -64 0 container.7
item replace entity @s container.35 from block 0 -64 0 container.8
item replace entity @s armor.feet from block 0 -64 0 container.9
item replace entity @s armor.legs from block 0 -64 0 container.10
item replace entity @s armor.chest from block 0 -64 0 container.11
item replace entity @s armor.head from block 0 -64 0 container.12
item replace entity @s weapon.offhand from block 0 -64 0 container.13
