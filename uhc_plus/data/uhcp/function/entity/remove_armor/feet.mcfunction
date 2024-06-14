summon minecraft:item ~ ~ ~ {PickupDelay:0s,Tags:["UHCP_ArmorFeet"],Item:{id:"minecraft:stone"}}
data modify entity @n[tag=UHCP_ArmorFeet] Item set from entity @s Inventory[{Slot:100b}]
item replace entity @s armor.feet with minecraft:air
tag @e remove UHCP_ArmorFeet
