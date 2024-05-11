summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_TightlyPackedItem"],Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_data":{uhcp_lockedslot:1b}}}}
data modify entity @e[tag=UHCP_TightlyPackedItem,sort=nearest,limit=1] Item set from entity @s Inventory[{Slot:33b}]
tag @e remove UHCP_TightlyPackedItem
