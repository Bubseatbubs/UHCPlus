# Swap items
execute if predicate uhcp:augments/tightly_packed/swap run return run function uhcp:augments/effects/gold/tightlypacked/swap/32

# Drop item
summon minecraft:item ~ ~ ~ {PickupDelay:40s,Tags:["UHCP_TightlyPackedItem"],Item:{id:"minecraft:stone",count:1}}
data modify entity @n[tag=UHCP_TightlyPackedItem] Item set from entity @s Inventory[{Slot:32b}]
tag @n[tag=UHCP_TightlyPackedItem] remove UHCP_TightlyPackedItem
