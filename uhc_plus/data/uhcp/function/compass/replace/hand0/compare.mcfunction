# Fail-safe
scoreboard players set %compass_found uhcp_itemInv 0
execute store result score %compass_track uhcp_itemInv run data get storage uhcp:compass Track

# Find item in array
execute if score %compass_track uhcp_itemInv matches 1.. store result score %compass_found uhcp_itemInv run function uhcp:compass/replace/hand0/compare/find
execute if score %compass_found uhcp_itemInv matches 0 run function uhcp:compass/replace/hand0/compare/missing
execute if score %compass_found uhcp_itemInv matches 1 run function uhcp:compass/replace/hand0/compare/count
