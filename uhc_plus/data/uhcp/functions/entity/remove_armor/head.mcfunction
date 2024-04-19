summon minecraft:item ~ ~ ~ {PickupDelay:0s,Tags:["UHCP_ArmorHead"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=UHCP_ArmorHead,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:103b}]
item replace entity @s armor.head with minecraft:air
tag @e remove UHCP_ArmorHead