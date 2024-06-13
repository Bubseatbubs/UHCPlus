summon minecraft:item ~ ~ ~ {PickupDelay:0s,Tags:["UHCP_ArmorChest"],Item:{id:"minecraft:stone"}}
data modify entity @e[tag=UHCP_ArmorChest,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:102b}]
item replace entity @s armor.chest with minecraft:air
tag @e remove UHCP_ArmorChest