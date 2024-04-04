advancement revoke @s only uhcp:augments/tightly_packed
playsound block.note_block.snare master @s ~ ~ ~ 1 1 1

summon item ~ ~ ~ {PickupDelay:20,Tags:["UHCP_TightlyPackedItem"],Item:{id:"minecraft:stone",Count:1b}}

execute if items entity @s container.27 * run data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:27b}]
execute if items entity @s container.28 * run data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:28b}]
execute if items entity @s container.29 * run data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:29b}]
execute if items entity @s container.30 * run data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:30b}]
execute if items entity @s container.31 * run data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:31b}]
execute if items entity @s container.32 * run data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:32b}]
execute if items entity @s container.33 * run data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:33b}]
execute if items entity @s container.34 * run data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:34b}]
execute if items entity @s container.35 * run data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:35b}]

item replace entity @s container.27 with minecraft:air
item replace entity @s container.28 with minecraft:air
item replace entity @s container.29 with minecraft:air
item replace entity @s container.30 with minecraft:air
item replace entity @s container.31 with minecraft:air
item replace entity @s container.32 with minecraft:air
item replace entity @s container.33 with minecraft:air
item replace entity @s container.34 with minecraft:air
item replace entity @s container.35 with minecraft:air

tag @e remove UHCP_TightlyPackedItem