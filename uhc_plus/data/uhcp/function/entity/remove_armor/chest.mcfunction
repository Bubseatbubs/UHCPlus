summon minecraft:item ~ ~ ~ {PickupDelay:0s,Tags:["UHCP_ArmorChest"],Item:{id:"minecraft:stone"}}
data modify entity @n[tag=UHCP_ArmorChest] Item set from entity @s Inventory[{Slot:102b}]
item replace entity @s armor.chest with minecraft:air
tag @e remove UHCP_ArmorChest
