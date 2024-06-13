execute at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:glass
playsound minecraft:block.glass.break master @a[distance=..8] ~ ~ ~ 1 1 0.75
particle minecraft:block{block_state:"minecraft:glass"} ~ ~ ~ 0.5 0.5 0.5 1 50 normal
kill @s