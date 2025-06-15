# Build the stone brick trail at marker location
# Only place blocks in air or water (don't overwrite solid blocks)

execute if block ~ ~ ~ air run setblock ~ ~ ~ minecraft:stone_bricks
execute if block ~ ~ ~ water run setblock ~ ~ ~ minecraft:stone_bricks

# Add support block around if needed
execute if block ~ ~-1 ~ air run setblock ~ ~-1 ~ minecraft:stone_bricks
execute if block ~ ~-1 ~ water run setblock ~ ~-1 ~ minecraft:stone_bricks

execute if block ~1 ~ ~ air run setblock ~1 ~ ~ minecraft:stone_bricks
execute if block ~1 ~ ~ water run setblock ~1 ~ ~ minecraft:stone_bricks

execute if block ~ ~ ~1 air run setblock ~ ~ ~1 minecraft:stone_bricks
execute if block ~ ~ ~1 water run setblock ~ ~ ~1 minecraft:stone_bricks

execute if block ~-1 ~ ~ air run setblock ~-1 ~ ~ minecraft:stone_bricks
execute if block ~-1 ~ ~ water run setblock ~-1 ~ ~ minecraft:stone_bricks

execute if block ~ ~ ~-1 air run setblock ~ ~ ~-1 minecraft:stone_bricks
execute if block ~ ~ ~-1 water run setblock ~ ~ ~-1 minecraft:stone_bricks


# Visual and audio effects
particle minecraft:block{block_state:"minecraft:stone_bricks"} ~ ~ ~ 0.3 0.3 0.3 0.1 10 normal
playsound minecraft:block.stone.place block @a[distance=..16] ~ ~ ~ 0.5 1.0

# Note: Marker will be cleaned up by main tick function after 25 ticks