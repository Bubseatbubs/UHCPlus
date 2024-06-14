summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_TightlyPackedItem"],Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_data":{uhcp_lockedslot:1b}}}}
data modify entity @n[tag=UHCP_TightlyPackedItem] Item set from entity @s Inventory[{Slot:27b}]
tag @e remove UHCP_TightlyPackedItem
