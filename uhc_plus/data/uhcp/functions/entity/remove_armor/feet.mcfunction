summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_ArmorFeet"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=UHCP_ArmorFeet,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:100b}]
tag @e remove UHCP_ArmorFeet