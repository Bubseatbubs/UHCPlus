# Add tag
tag @a remove UHCP_CTrack
tag @s add UHCP_CTrack

# Determine dimension
execute if predicate uhcp:dimensions/minecraft/overworld in minecraft:overworld run function uhcp:compass/offhand/minecraft/overworld
execute if predicate uhcp:dimensions/minecraft/the_end in minecraft:the_end run function uhcp:compass/offhand/minecraft/the_end
execute if predicate uhcp:dimensions/minecraft/the_nether in minecraft:the_nether run function uhcp:compass/offhand/minecraft/the_nether

# Remove tag
tag @s remove UHCP_CTrack
