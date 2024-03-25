summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_MirageArmorFeet"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=UHCP_MirageArmorFeet,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:100b}]
