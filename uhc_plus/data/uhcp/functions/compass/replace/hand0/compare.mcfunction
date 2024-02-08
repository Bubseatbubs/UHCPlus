# Fail-safe
scoreboard players set %uhcp_compassFound uhcp_itemInv 0
execute store result score %uhcp_compassTrack uhcp_itemInv run data get storage uhcp:compass Track

# Find item in array
execute if score %uhcp_compassTrack uhcp_itemInv matches 1.. store result score %uhcp_compassFound uhcp_itemInv run function uhcp:compass/replace/hand0/compare/find
execute if score %uhcp_compassFound uhcp_itemInv matches 0 run function uhcp:compass/replace/hand0/compare/missing
execute if score %uhcp_compassFound uhcp_itemInv matches 1 run function uhcp:compass/replace/hand0/compare/count
