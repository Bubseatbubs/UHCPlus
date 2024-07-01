# Knock Up Nearby Mobs/Players
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:item.mace.smash_ground_heavy master @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:explosion_emitter ~ ~ ~ 0.25 0.25 0.25 0.1 10 normal
particle minecraft:block{block_state:"minecraft:iron_block"} ~ ~ ~ 3 1 3 0.1 100 normal

execute as @a[gamemode=survival,distance=..12] run tag @s add UHCP_InflictedWithGravityGlobe
execute as @a[gamemode=survival,distance=..12] run attribute @s minecraft:generic.gravity modifier add uhcp:gravity_globe -0.45 add_value
