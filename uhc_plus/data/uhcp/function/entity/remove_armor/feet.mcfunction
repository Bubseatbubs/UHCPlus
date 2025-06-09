summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_ArmorFeet"],Item:{id:"minecraft:iron_boots"}}
data modify entity @n[tag=UHCP_ArmorFeet] Item set from entity @s equipment.feet
item replace entity @s armor.feet with minecraft:air
tag @e remove UHCP_ArmorFeet
