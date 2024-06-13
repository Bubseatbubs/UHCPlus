# Compare item counts
execute store result score %compass_count_new uhcp_itemInv run data get storage uhcp:compass Compass.hand[1].count
execute if score %compass_count_new uhcp_itemInv matches 0 run scoreboard players set %compass_count_new uhcp_itemInv 1
execute store result score %compass_count uhcp_itemInv run data get storage uhcp:compass Track[-1].count
scoreboard players operation %compass_count uhcp_itemInv -= %compass_count_new uhcp_itemInv
execute unless score %compass_count uhcp_itemInv matches 0 run function uhcp:compass/replace/hand1/compare/reassign
