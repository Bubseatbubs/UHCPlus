# Aligned to block at player's feet
setblock ~ ~-1 ~ minecraft:diamond_block
playsound minecraft:block.stone.place master @a[distance=..6] ~ ~-1 ~ 1 1 1
particle minecraft:block{block_state:"minecraft:diamond_block"} ~ ~ ~ 0.25 0.25 0.25 1 25 normal
