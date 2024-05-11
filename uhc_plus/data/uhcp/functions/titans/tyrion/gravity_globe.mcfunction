
# Knock Up Nearby Mobs/Players
playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound minecraft:block.beacon.activate master @a[distance=..12] ~ ~ ~ 1 2 0.5
playsound minecraft:block.beacon.power_select master @a[distance=..12] ~ ~ ~ 1 2 0.5
particle minecraft:nautilus ~ ~ ~ 6 0.1 6 0.001 30 normal
particle minecraft:trial_spawner_detection ~ ~ ~ 6 0.1 6 0.01 300 normal

execute as @a[gamemode=survival,distance=..12] run tag @s add UHCP_InflictedWithGravityGlobe
execute as @a[gamemode=survival,distance=..12] run attribute @s minecraft:generic.gravity modifier add 95c5d624-7157-4cee-95eb-0d079cbfec99 "" -0.6 add_value
execute as @a[gamemode=survival,distance=..12] at @s run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.1 50 normal
