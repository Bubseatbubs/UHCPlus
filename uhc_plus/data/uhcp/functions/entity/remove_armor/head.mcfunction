summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_ArmorHead"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=UHCP_ArmorHead,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:103b}]
tag @e remove UHCP_ArmorHead