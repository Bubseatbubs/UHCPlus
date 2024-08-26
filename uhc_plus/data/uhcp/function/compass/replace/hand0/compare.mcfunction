# Fail-safe
scoreboard players set %compass_found uhcp_itemInv 0
execute store result score %compass_track uhcp_itemInv run data get storage uhcp:compass Track

# Find item in array
execute if score %compass_track uhcp_itemInv matches 1.. store result score %compass_found uhcp_itemInv run function uhcp:compass/replace/hand0/compare/find
execute if score %compass_found uhcp_itemInv matches 1 run return run function uhcp:compass/replace/hand0/compare/count

# Add missing compass
data modify storage uhcp:compass Track append value {}
data modify storage uhcp:compass Track[-1].uuid set from storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".uuid
data modify storage uhcp:compass Track[-1].count set from storage uhcp:compass Compass.hand[0].count
