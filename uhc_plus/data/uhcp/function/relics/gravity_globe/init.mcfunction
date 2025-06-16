tag @s add UHCP_Owner

# Assign team scoreboards
scoreboard players set @e[distance=..12,type=!#uhcp:inanimate_mobs] uhcp_initStatus 0
execute as @e[distance=..12,type=!#uhcp:inanimate_mobs] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team
scoreboard players set @a[gamemode=!survival] uhcp_initStatus 0

# Knock nearby mobs/players up
playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound minecraft:block.beacon.power_select master @a[distance=..12] ~ ~ ~ 1 2 0.5
particle minecraft:nautilus ~ ~ ~ 6 0.1 6 0.001 30 normal
particle minecraft:trial_spawner_detection ~ ~ ~ 6 0.1 6 0.01 300 normal
execute as @e[distance=..12,type=!#uhcp:inanimate_mobs] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 50 normal

execute as @a[distance=..12,team=!grace_period,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus run tag @s add UHCP_InflictedWithGravityGlobe
execute as @a[distance=..12,tag=UHCP_InflictedWithGravityGlobe] run attribute @s minecraft:gravity modifier add uhcp:gravity_globe -1 add_value
execute as @e[distance=..12,type=!minecraft:player,predicate=uhcp:targetable] unless score @s uhcp_initStatus = @p[tag=UHCP_Owner] uhcp_initStatus run data modify entity @s Motion[1] set value 1.75d

tag @s remove UHCP_Owner
tag @e remove UHCP_New
