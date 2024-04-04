summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_ArmorFeet"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=UHCP_ArmorFeet,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:100b}]
item replace entity @s armor.feet with minecraft:air
tag @e remove UHCP_ArmorFeet