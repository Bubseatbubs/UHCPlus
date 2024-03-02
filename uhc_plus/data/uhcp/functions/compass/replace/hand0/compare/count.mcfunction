# Compare item counts
execute store result score %uhcp_compassCtN uhcp_itemInv run data get storage uhcp:compass Compass.hand[0].count
execute if score %uhcp_compassCtN uhcp_itemInv matches 0 run scoreboard players set %uhcp_compassCtN uhcp_itemInv 1
execute store result score %uhcp_compassCt uhcp_itemInv run data get storage uhcp:compass Track[-1].count
scoreboard players operation %uhcp_compassCt uhcp_itemInv -= %uhcp_compassCtN uhcp_itemInv
execute unless score %uhcp_compassCt uhcp_itemInv matches 0 run function uhcp:compass/replace/hand0/compare/reassign
