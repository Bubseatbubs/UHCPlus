summon minecraft:item ~ ~ ~ {PickupDelay:0s,Tags:["UHCP_ArmorOffhand"],Item:{id:"minecraft:stone"}}
data modify entity @n[tag=UHCP_ArmorOffhand] Item set from entity @s Inventory[{Slot:-106b}]
item replace entity @s weapon.offhand with minecraft:air
tag @e remove UHCP_ArmorOffhand
