tag @s add UHCP_Owner
function uhcp:relics/durability/reset

# Assign Team Scoreboards
scoreboard players set @a uhcp_initStatus 0
execute as @a[gamemode=survival] run scoreboard players operation @s uhcp_initStatus = @s uhcp_team

tag @s add UHCP_Owner

# Knock Up Nearby Mobs/Players
playsound block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound block.beacon.power_select master @a[distance=..12] ~ ~ ~ 1 2 0.5
particle nautilus ~ ~ ~ 6 0.1 6 0.001 30 normal
particle trial_spawner_detection ~ ~ ~ 6 0.1 6 0.01 300 normal
scoreboard players operation @e[distance=..6,type=armor_stand,tag=UHCP_New] uhcp_initStatus = @s uhcp_initStatus
execute as @e[type=player,team=!grace_period,distance=..6,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_initStatus at @s run tag @s add UHCP_InflictedWithGravityGlobe
execute as @e[type=player,team=!grace_period,distance=..6,scores={uhcp_initStatus=1..}] unless score @s uhcp_initStatus = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_initStatus at @s run attribute @s generic.gravity modifier add 95c5d624-7157-4cee-95eb-0d079cbfec99 "" -0.4 add_value
execute as @e[type=!player,predicate=uhcp:targetable,distance=..10] unless score @s uhcp_initStatus = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_initStatus run data merge entity @s {Motion:[0.0,1.75,0.0]}
execute as @e[type=!#uhcp:inanimate_mobs,distance=..10] unless score @s uhcp_initStatus = @a[tag=UHCP_Owner,sort=nearest,limit=1] uhcp_initStatus at @s run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 50 normal

tag @s remove UHCP_Owner
tag @e remove UHCP_New
