summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_ArmorLegs"],Item:{id:"minecraft:iron_leggings"}}
data modify entity @n[tag=UHCP_ArmorLegs] Item set from entity @s equipment.legs
item replace entity @s armor.legs with minecraft:air
tag @e remove UHCP_ArmorLegs
