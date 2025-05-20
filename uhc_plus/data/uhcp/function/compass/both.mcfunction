# Add tag
tag @s add UHCP_CTrack

# Copy item data
data remove storage uhcp:compass Compass.hand
data modify storage uhcp:compass Compass.hand append from entity @s SelectedItem
data modify storage uhcp:compass Compass.hand[0].Slot set value 0b
data modify storage uhcp:compass Compass.hand append from entity @s equipment.offhand
data modify storage uhcp:compass Compass.hand[1].Slot set value 1b

# Determine dimension
execute if predicate uhcp:dimensions/minecraft/overworld run return run function uhcp:compass/both/minecraft/overworld
execute if predicate uhcp:dimensions/minecraft/the_nether run return run function uhcp:compass/both/minecraft/the_nether
execute if predicate uhcp:dimensions/minecraft/the_end run return run function uhcp:compass/both/minecraft/the_end

# Other dimension
function uhcp:compass/dimension
execute if score %compass_bool uhcp_itemInv matches 0 run return run function uhcp:compass/dimension/modify/both

# Player not found
function uhcp:compass/both/none
