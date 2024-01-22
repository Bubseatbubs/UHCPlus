# Reward player with all-seeing eye
execute store result score %uhcp_ender_eyeTot uhcp_itemCount run clear @s minecraft:ender_eye 0
scoreboard players set %uhcp_ender_eyeLow uhcp_itemCount 65
execute if score %uhcp_ender_eyeTot uhcp_itemCount matches 1.. in uhcp:main run function uhcp:glow/inventory
execute unless score %uhcp_ender_eyeLow uhcp_itemCount matches ..64 run function uhcp:glow/item
execute at @s run loot spawn ~ ~ ~ loot uhcp:all-seeing_eye
execute at @s run data modify entity @e[predicate=uhcp:ender_eye/item_entity/protected,sort=nearest,limit=1] PickupDelay set value 0s
advancement revoke @s only uhcp:ender_eye/craft
