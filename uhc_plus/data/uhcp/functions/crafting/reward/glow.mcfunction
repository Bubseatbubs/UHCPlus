# Reward player with all-seeing eye
execute store result score %uhcp_itemTot uhcp_itemCount run clear @s minecraft:ender_eye 0
scoreboard players set %uhcp_itemLow uhcp_itemCount 65
execute if score %uhcp_itemTot uhcp_itemCount matches 1.. run function uhcp:crafting/inventory/glow
execute unless score %uhcp_itemLow uhcp_itemCount matches ..64 run function uhcp:crafting/item/glow
execute at @s run loot spawn ~ ~ ~ loot uhcp:all-seeing_eye
execute at @s as @e[distance=..2,predicate=uhcp:ender_eye/item_entity/protected] run data modify entity @s PickupDelay set value 0s
advancement revoke @s only uhcp:ender_eye/craft
