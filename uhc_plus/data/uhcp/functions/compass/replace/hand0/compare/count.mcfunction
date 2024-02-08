# Compare item counts
execute store result score %uhcp_compassCtN uhcp_itemInv run data get storage uhcp:compass Compass.hand[0].Count
execute store result score %uhcp_compassCt uhcp_itemInv run data get storage uhcp:compass Track[0].Count
scoreboard players operation %uhcp_compassCt uhcp_itemInv -= %uhcp_compassCtN uhcp_itemInv
execute unless score %uhcp_compassCt uhcp_itemInv matches 0 run function uhcp:compass/replace/hand0/compare/reassign
