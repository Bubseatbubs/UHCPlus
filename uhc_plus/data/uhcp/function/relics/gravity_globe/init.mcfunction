tag @s add UHCP_Owner
function uhcp:relics/durability/reset

# Assign Team Scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

tag @s add UHCP_Owner

# Knock Up Nearby Mobs/Players
playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound minecraft:block.beacon.power_select master @a[distance=..12] ~ ~ ~ 1 2 0.5
particle minecraft:nautilus ~ ~ ~ 6 0.1 6 0.001 30 normal
particle minecraft:trial_spawner_detection ~ ~ ~ 6 0.1 6 0.01 300 normal
scoreboard players operation @e[distance=..6,type=minecraft:armor_stand,tag=UHCP_New] uhcp_initStatus = @s uhcp_initStatus
execute as @a[team=!grace_period,distance=..6,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus at @s run tag @s add UHCP_InflictedWithGravityGlobe
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] as @a[team=!grace_period,distance=..6,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus run attribute @s minecraft:generic.gravity modifier add uhcp:gravity_globe -0.4 add_value
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] as @a[team=!grace_period,distance=..6,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus run attribute @s minecraft:generic.gravity modifier add uhcp:gravity_globe -0.6 add_value
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] as @e[type=!minecraft:player,predicate=uhcp:targetable,distance=..10] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus run data merge entity @s {Motion:[0.0,1.75,0.0]}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{uhcp_radiant:1b}] as @e[type=!minecraft:player,predicate=uhcp:targetable,distance=..10] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus run data merge entity @s {Motion:[0.0,3.5,0.0]}
execute as @e[type=!#uhcp:inanimate_mobs,distance=..10] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 50 normal

tag @s remove UHCP_Owner
tag @e remove UHCP_New
