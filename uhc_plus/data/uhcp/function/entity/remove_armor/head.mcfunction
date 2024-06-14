summon minecraft:item ~ ~ ~ {PickupDelay:0s,Tags:["UHCP_ArmorHead"],Item:{id:"minecraft:stone"}}
data modify entity @n[tag=UHCP_ArmorHead] Item set from entity @s Inventory[{Slot:103b}]
item replace entity @s armor.head with minecraft:air
tag @e remove UHCP_ArmorHead
