# Get stored count
$execute store result score %compass_count uhcp_itemInv run data get storage uhcp:compass Track[{uuid:$(uuid)}].count
execute if score %compass_count uhcp_itemInv matches 0 run return run function uhcp:compass/replace/hand0/assign

# Compare item counts
execute store result score %compass_newCount uhcp_itemInv run data get storage uhcp:compass Compass.hand[0].count
scoreboard players operation %compass_count uhcp_itemInv -= %compass_newCount uhcp_itemInv
execute if score %compass_count uhcp_itemInv matches 0 run return fail

# Reassign and reset item
$execute store result storage uhcp:compass Track[{uuid:$(uuid)}].count int 1 run scoreboard players get %compass_count uhcp_itemInv
function uhcp:compass/replace/hand0/assign
data modify storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".compass_age set value 0b
