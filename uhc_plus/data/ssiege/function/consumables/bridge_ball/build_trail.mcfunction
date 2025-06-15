# Build the stone brick trail at marker location
# Only place blocks in air or water (don't overwrite solid blocks)

execute if block ~ ~-1.5 ~ air run setblock ~ ~-1.5 ~ minecraft:stone_bricks
execute if block ~ ~-1.5 ~ water run setblock ~ ~-1.5 ~ minecraft:stone_bricks

# Add support block around if needed
execute if block ~ ~-2.5 ~ air run setblock ~ ~-2.5 ~ minecraft:stone_bricks
execute if block ~ ~-2.5 ~ water run setblock ~ ~-2.5 ~ minecraft:stone_bricks

execute if block ~1 ~-1.5 ~ air run setblock ~1 ~-1.5 ~ minecraft:stone_bricks
execute if block ~1 ~-1.5 ~ water run setblock ~1 ~-1.5 ~ minecraft:stone_bricks

execute if block ~ ~-1.5 ~1 air run setblock ~ ~-1.5 ~1 minecraft:stone_bricks
execute if block ~ ~-1.5 ~1 water run setblock ~ ~-1.5 ~1 minecraft:stone_bricks

execute if block ~-1 ~-1.5 ~ air run setblock ~-1 ~-1.5 ~ minecraft:stone_bricks
execute if block ~-1 ~-1.5 ~ water run setblock ~-1 ~-1.5 ~ minecraft:stone_bricks

execute if block ~ ~-1.5 ~-1 air run setblock ~ ~-1.5 ~-1 minecraft:stone_bricks
execute if block ~ ~-1.5 ~-1 water run setblock ~ ~-1.5 ~-1 minecraft:stone_bricks

# Visual and audio effects
particle minecraft:block{block_state:"minecraft:stone_bricks"} ~ ~-1 ~ 0.3 0.3 0.3 0.1 10 normal
playsound minecraft:block.stone.place block @a[distance=..16] ~ ~-1 ~ 0.5 1.0

# Note: Marker will be cleaned up by main tick function after 25 ticks