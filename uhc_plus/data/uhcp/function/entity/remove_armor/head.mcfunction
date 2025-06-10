summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_ArmorHead"],Item:{id:"minecraft:iron_helmet"}}
data modify entity @n[tag=UHCP_ArmorHead] Item set from entity @s equipment.head
item replace entity @s armor.head with minecraft:air
tag @e remove UHCP_ArmorHead
