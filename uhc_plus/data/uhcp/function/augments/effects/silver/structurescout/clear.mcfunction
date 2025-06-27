# Replace glass with air
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:glass strict
playsound minecraft:block.glass.break block @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:block{block_state:"minecraft:glass"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal
kill @s
