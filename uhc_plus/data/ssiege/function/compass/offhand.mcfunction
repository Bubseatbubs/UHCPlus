# Add tag
tag @s add UHCP_CTrack

# Copy item data
data remove storage uhcp:compass Compass.hand
data modify storage uhcp:compass Compass.hand append from entity @s equipment.offhand
data modify storage uhcp:compass Compass.hand[0].Slot set value 0b

# Determine dimension
execute if predicate uhcp:dimensions/minecraft/overworld run return run function uhcp:compass/offhand/minecraft/overworld
execute if predicate uhcp:dimensions/minecraft/the_end run return run function uhcp:compass/offhand/minecraft/the_end
execute if predicate uhcp:dimensions/minecraft/the_nether run return run function uhcp:compass/offhand/minecraft/the_nether

# Other dimension
function uhcp:compass/dimension
execute if score %compass_bool uhcp_itemInv matches 0 run return run function uhcp:compass/dimension/modify/offhand

# Player not found
function uhcp:compass/offhand/none
