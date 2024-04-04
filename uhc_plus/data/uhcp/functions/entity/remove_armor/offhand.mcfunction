summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_ArmorOffhand"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=UHCP_ArmorOffhand,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:-106b}]
item replace entity @s weapon.offhand with minecraft:air
tag @e remove UHCP_ArmorOffhand