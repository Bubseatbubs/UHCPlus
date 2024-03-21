effect give @s absorption 2 0 true

execute store result storage uhcp:cd cDamage int 1 run scoreboard players set %damage uhcp_a_durability 10
item modify entity @s weapon.mainhand uhcp:update_dur

# Initalize Dash
summon marker ~ ~ ~ {Tags:["UHCP_SaveRotation"]}
data modify entity @e[tag=UHCP_SaveRotation,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=UHCP_SaveRotation,sort=nearest,limit=1] Rotation[1] set from entity @s Rotation[1]
tp @s ~ ~ ~ ~ 0
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 1.0 10 normal

# Assign Team Scoreboards
scoreboard players set @a uhcp_initStatus -1
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team
scoreboard players set @e[type=!#uhcp:inanimate_mobs,type=!minecraft:player] uhcp_initStatus 0
execute as @e[type=!#uhcp:inanimate_mobs,type=!minecraft:player,scores={uhcp_team=1..}] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

# Begin Dash
tag @s add UHCP_isDashing
execute at @s run function uhcp:relics/thread_of_fate/move_forward
execute at @s run function uhcp:relics/thread_of_fate/move_forward
execute at @s run function uhcp:relics/thread_of_fate/move_forward
execute at @s run function uhcp:relics/thread_of_fate/move_forward
execute at @s run function uhcp:relics/thread_of_fate/move_forward

# End Dash
execute as @e[type=armor_stand,tag=UHCP_DashShadow] at @s rotated as @e[tag=UHCP_isDashing,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
tag @s remove UHCP_isDashing
playsound minecraft:item.trident.riptide_2 player @a[distance=..6.5] ~ ~ ~ 1.0 2.0 1.0
playsound minecraft:item.trident.riptide_3 player @a[distance=..6.5] ~ ~ ~ 1.0 2.0 1.0

# Check if player is in solid block
execute at @s run function uhcp:relics/thread_of_fate/move_back
execute at @s run function uhcp:relics/thread_of_fate/move_back
execute at @s run function uhcp:relics/thread_of_fate/move_back
execute at @s run function uhcp:relics/thread_of_fate/move_back
execute at @s run function uhcp:relics/thread_of_fate/move_back


# Load Rotation
execute unless entity @e[tag=UHCP_Hit] at @s rotated as @e[tag=UHCP_SaveRotation,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @e[tag=UHCP_Hit] at @s facing entity @e[tag=UHCP_Hit,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~
tag @e remove UHCP_Hit
kill @e[tag=UHCP_SaveRotation]
schedule function uhcp:relics/thread_of_fate/finish 2t
