# Loot spawn item when loot give results in 0
execute anchored eyes run loot spawn ^ ^ ^ loot uhcp:all-seeing_eye
execute as @e[distance=..2.5,predicate=uhcp:ender_eye/item_entity/protected] run data modify entity @s PickupDelay set value 0s
