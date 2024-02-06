# Reward player with all-seeing eye
execute store result score %uhcp_itemTot uhcp_itemCount run clear @s minecraft:ender_eye 0
scoreboard players set %uhcp_itemLow uhcp_itemCount 65
execute if score %uhcp_itemTot uhcp_itemCount matches 1.. run function uhcp:crafting/inventory/glow
execute unless score %uhcp_itemLow uhcp_itemCount matches ..64 run function uhcp:crafting/item/glow
execute store result score %uhcp_item uhcp_itemCount run loot give @s loot uhcp:all-seeing_eye
execute if score %uhcp_item uhcp_itemCount matches 0 at @s run function uhcp:crafting/reward/glow/spawn
advancement revoke @s only uhcp:ender_eye/craft
