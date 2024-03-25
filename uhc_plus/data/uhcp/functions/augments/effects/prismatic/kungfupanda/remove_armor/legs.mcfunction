summon item ~ ~ ~ {PickupDelay:0,Tags:["UHCP_PandaArmorLegs"],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=UHCP_PandaArmorLegs,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:101b}]
