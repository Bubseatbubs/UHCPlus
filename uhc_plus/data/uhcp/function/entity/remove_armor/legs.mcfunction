summon minecraft:item ~ ~ ~ {PickupDelay:0s,Tags:["UHCP_ArmorLegs"],Item:{id:"minecraft:stone"}}
data modify entity @n[tag=UHCP_ArmorLegs] Item set from entity @s equipment.legs
item replace entity @s armor.legs with minecraft:air
tag @e remove UHCP_ArmorLegs
