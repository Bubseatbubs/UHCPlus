# Assign new unique identifier
execute store result storage uhcp:compass Compass.hand[0].tag.UUID[0] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[0].tag.UUID[1] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[0].tag.UUID[2] int 1 run random value 0..2147483646
execute store result storage uhcp:compass Compass.hand[0].tag.UUID[3] int 1 run random value 0..2147483646

# Track information
data modify storage uhcp:compass Track prepend value {}
data modify storage uhcp:compass Track[0].UUID set from storage uhcp:compass Compass.hand[0].tag.UUID
data modify storage uhcp:compass Track[0].Count set from storage uhcp:compass Compass.hand[0].Count
