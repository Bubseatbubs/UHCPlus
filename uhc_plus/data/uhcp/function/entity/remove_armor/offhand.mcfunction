summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_ArmorOffhand"],Item:{id:"minecraft:stick"}}
data modify entity @n[tag=UHCP_ArmorOffhand] Item set from entity @s equipment.offhand
item replace entity @s weapon.offhand with minecraft:air
tag @e remove UHCP_ArmorOffhand
