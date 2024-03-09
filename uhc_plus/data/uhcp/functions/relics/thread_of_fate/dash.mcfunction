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
scoreboard players set @a uhcp_initStatus -1
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team
scoreboard players set @e[type=!#uhcp:inanimate_mobs,type=!minecraft:player] uhcp_initStatus 0
execute as @e[type=!#uhcp:inanimate_mobs,type=!minecraft:player,scores={uhcp_team=1..}] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Begin Dash
tag @s add UHCP_isDashing
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:917542}}},{id:"minecraft:black_concrete"}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5,scores={uhcp_initStatus=0..}] unless score @s uhcp_initStatus = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_initStatus run function uhcp:relics/thread_of_fate/damage
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:917542}}},{id:"minecraft:black_concrete"}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5,scores={uhcp_initStatus=0..}] unless score @s uhcp_initStatus = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_initStatus run function uhcp:relics/thread_of_fate/damage
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:917542}}},{id:"minecraft:black_concrete"}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5,scores={uhcp_initStatus=0..}] unless score @s uhcp_initStatus = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_initStatus run function uhcp:relics/thread_of_fate/damage
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:917542}}},{id:"minecraft:black_concrete"}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5,scores={uhcp_initStatus=0..}] unless score @s uhcp_initStatus = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_initStatus run function uhcp:relics/thread_of_fate/damage
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Invisible:1b,NoBasePlate:1b,Tags:["UHCP_DashShadow"],Pose:{LeftArm:[36f,0f,0f],RightArm:[297f,0f,0f],LeftLeg:[303f,0f,0f],RightLeg:[44f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":{rgb:0}}},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":{rgb:917542}}},{id:"minecraft:black_concrete"}]}
execute at @s if block ^ ^ ^1 #uhcp:non_solid_blocks run tp @s ^ ^ ^1
execute at @s as @e[type=!#uhcp:inanimate_mobs,distance=..1.5,scores={uhcp_initStatus=0..}] unless score @s uhcp_initStatus = @a[tag=UHCP_isDashing,limit=1,sort=nearest] uhcp_initStatus run function uhcp:relics/thread_of_fate/damage

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
