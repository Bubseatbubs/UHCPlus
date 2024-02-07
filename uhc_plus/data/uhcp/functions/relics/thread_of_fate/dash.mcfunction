advancement revoke @s only uhcp:relics/thread_of_fate/ability
effect give @s absorption 2 0 true

execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 10
item modify entity @s weapon.mainhand uhcp:update_dur

# Initalize Dash
execute at @s run summon marker ~ ~ ~ {Tags:["UHCP_SaveRotation"]}
execute at @s run data modify entity @e[tag=UHCP_SaveRotation,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
execute at @s run data modify entity @e[tag=UHCP_SaveRotation,sort=nearest,limit=1] Rotation[1] set from entity @s Rotation[1]
execute at @s run tp @s ~ ~ ~ ~ 0
execute at @s run particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 1.0 10 normal

# Assign Team Scoreboards
execute if entity @a[predicate=uhcp:teams/solo] run function uhcp:teams/solo
execute if entity @a[predicate=uhcp:teams/team] run function uhcp:teams/team
scoreboard players set @a[predicate=uhcp:teams/neither] uhcp_team 0
scoreboard players set @a[gamemode=!survival] uhcp_team 0

# Begin Dash
tag @s add UHCP_isDashing
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:917542}}},{id:"minecraft:black_concrete",Count:1b}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5] unless score @s uhcp_team = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_team run function uhcp:relics/thread_of_fate/damage
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:917542}}},{id:"minecraft:black_concrete",Count:1b}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5] unless score @s uhcp_team = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_team run function uhcp:relics/thread_of_fate/damage
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:917542}}},{id:"minecraft:black_concrete",Count:1b}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5] unless score @s uhcp_team = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_team run function uhcp:relics/thread_of_fate/damage
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:917542}}},{id:"minecraft:black_concrete",Count:1b}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5] unless score @s uhcp_team = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_team run function uhcp:relics/thread_of_fate/damage
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:917542}}},{id:"minecraft:black_concrete",Count:1b}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5] unless score @s uhcp_team = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_team run function uhcp:relics/thread_of_fate/damage

# End Dash
execute as @e[type=armor_stand,tag=UHCP_DashShadow] at @s rotated as @e[tag=UHCP_isDashing,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
tag @s remove UHCP_isDashing
tag @e remove UHCP_Hit
execute at @s run playsound minecraft:item.trident.riptide_2 player @a[distance=..6.5] ~ ~ ~ 1.0 2.0 1.0
execute at @s run playsound minecraft:item.trident.riptide_3 player @a[distance=..6.5] ~ ~ ~ 1.0 2.0 1.0

# Check if player is in solid block
execute at @s unless block ~ ~ ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1
execute at @s unless block ~ ~1 ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1
execute at @s unless block ~ ~ ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1
execute at @s unless block ~ ~1 ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1
execute at @s unless block ~ ~ ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1
execute at @s unless block ~ ~1 ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1
execute at @s unless block ~ ~ ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1
execute at @s unless block ~ ~1 ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1
execute at @s unless block ~ ~ ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1
execute at @s unless block ~ ~1 ~ #uhcp:non_solid_blocks run tp @s ^ ^ ^-1

# Load Rotation
execute at @s rotated as @e[tag=UHCP_SaveRotation,limit=1,sort=nearest] run tp @s ~ ~ ~ ~180 ~
kill @e[tag=UHCP_SaveRotation]
schedule function uhcp:relics/thread_of_fate/finish 2t

