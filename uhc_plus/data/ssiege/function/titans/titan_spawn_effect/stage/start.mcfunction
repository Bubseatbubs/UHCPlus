execute positioned over motion_blocking_no_leaves positioned 0 ~ 0 run tp @e[tag=UHCP_Titan] ~ ~ ~
execute positioned over motion_blocking_no_leaves positioned 0 ~ 0 if block ~ ~-1 ~ obsidian run fill ~-8 ~-1 ~-8 ~8 ~-1 ~8 obsidian

data merge entity @s {start_interpolation:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-8f,-50f,-8f],scale:[16f,1000f,16f]}}
execute as @a[distance=..40] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 100 1 1
execute as @a[distance=..40] at @s run playsound minecraft:entity.warden.sonic_boom master @s ~ ~ ~ 100 0.5 1
execute as @a[distance=..40] at @s run playsound minecraft:block.conduit.activate master @s ~ ~ ~ 100 0.5 1