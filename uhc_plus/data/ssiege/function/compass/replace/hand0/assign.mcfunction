# Assign new unique identifier
execute store result storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".uuid[0] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".uuid[1] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".uuid[2] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".uuid[3] int 1 run random value 0..2147483646

# Track new compass(es)
data modify storage uhcp:compass Track append value {}
data modify storage uhcp:compass Track[-1].uuid set from storage uhcp:compass Compass.hand[0].components."minecraft:custom_data".uuid
data modify storage uhcp:compass Track[-1].count set from storage uhcp:compass Compass.hand[0].count
