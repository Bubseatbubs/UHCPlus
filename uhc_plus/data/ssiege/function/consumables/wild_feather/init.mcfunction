# Summon and spread teleport markers
summon marker ~ ~ ~ {Tags:["wild_feather_origin"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
summon marker ~ ~ ~ {Tags:["SSIEGE_wild_feather"]}
execute as @e[tag=SSIEGE_wild_feather] at @s run spreadplayers ~ ~ 0 8 false @s

# Define upper and lower bound of valid y-levels based on players current y-level
execute store result score %upper_bound uhcp_initStatus run data get entity @s Pos[1]
scoreboard players operation %upper_bound uhcp_initStatus -= #3 uhcp_const
scoreboard players operation %lower_bound uhcp_initStatus = %upper_bound uhcp_initStatus
scoreboard players operation %upper_bound uhcp_initStatus += #6 uhcp_const
execute as @e[tag=SSIEGE_wild_feather] run execute store result score @s uhcp_initStatus run data get entity @s Pos[1]

# Remove all markers that don't fall within the bounds
execute as @e[tag=SSIEGE_wild_feather] run execute if score @s uhcp_initStatus < %lower_bound uhcp_initStatus run kill @s
execute as @e[tag=SSIEGE_wild_feather] run execute if score @s uhcp_initStatus > %upper_bound uhcp_initStatus run kill @s

# If no valid locations, fail
execute unless entity @e[tag=SSIEGE_wild_feather] run return run function ssiege:consumables/wild_feather/fail

# If a valid "far" location exists, eliminate all "near" locations
execute if entity @e[tag=SSIEGE_wild_feather,distance=7..] run kill @e[tag=SSIEGE_wild_feather,distance=..7]

# Featherstorm
execute if score @s uhcp_augment matches 303 run function ssiege:consumables/wild_feather/featherstorm

# Teleport player to random valid marker
tp @s @e[type=marker, tag=SSIEGE_wild_feather, sort=random, limit=1]
execute at @s facing entity @n[tag=wild_feather_origin] feet run tp @s ~ ~ ~ ~ ~

# Sound/Particle Effects
execute at @s run playsound minecraft:entity.breeze.jump master @a[distance=..16] ~ ~ ~ 1 1 0.5
execute at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 1 100 normal

# Cleanup markers
kill @e[type=marker,tag=wild_feather_origin]
kill @e[type=marker,tag=SSIEGE_wild_feather]