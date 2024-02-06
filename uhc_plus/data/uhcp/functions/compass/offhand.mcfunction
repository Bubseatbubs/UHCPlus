# Add tag
tag @a remove UHCP_CTrack
tag @s add UHCP_CTrack

# Copy item data
data remove storage uhcp:compass Compass.hand
data modify storage uhcp:compass Compass.hand append from entity @s Inventory[{Slot:-106b}]
data modify storage uhcp:compass Compass.hand[0].Slot set value 0b

# Determine dimension
execute if predicate uhcp:dimensions/minecraft/overworld in minecraft:overworld at @s run function uhcp:compass/offhand/minecraft/overworld
execute if predicate uhcp:dimensions/minecraft/the_end in minecraft:the_end at @s run function uhcp:compass/offhand/minecraft/the_end
execute if predicate uhcp:dimensions/minecraft/the_nether in minecraft:the_nether at @s run function uhcp:compass/offhand/minecraft/the_nether

# Remove tag
tag @s remove UHCP_CTrack
