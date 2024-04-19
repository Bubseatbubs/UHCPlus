summon minecraft:item ~ ~ ~ {PickupDelay:0s,Tags:["UHCP_ArmorLegs"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=UHCP_ArmorLegs,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:101b}]
item replace entity @s armor.legs with minecraft:air
tag @e remove UHCP_ArmorLegs