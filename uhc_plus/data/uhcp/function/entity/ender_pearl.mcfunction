# Prevent resistance gain
execute store success score @s uhcp_initStatus run clone ~ ~-2 ~ ~ ~1 ~ to uhcp:main 8 30 8 strict filtered minecraft:bubble_column[drag=false] force
execute if score @s uhcp_initStatus matches 1 run return fail

# Store motion data for macro
data modify storage uhcp:ender_pearl x1 set from entity @s Motion[0]
data modify storage uhcp:ender_pearl y1 set from entity @s Motion[1]
data modify storage uhcp:ender_pearl z1 set from entity @s Motion[2]
execute store result storage uhcp:ender_pearl x2 double 1.22 run data get storage uhcp:ender_pearl x1
execute store result storage uhcp:ender_pearl y2 double 1.22 run data get storage uhcp:ender_pearl y1
execute store result storage uhcp:ender_pearl z2 double 1.22 run data get storage uhcp:ender_pearl z12

# Check for hitboxes
execute on origin run function uhcp:entity/ender_pearl/hitbox with storage uhcp:ender_pearl
