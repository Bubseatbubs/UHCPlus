execute at @s run playsound entity.zombie.ambient master @a[distance=..16] ~ ~ ~ 1 0.5 0.75

execute as @a[gamemode=survival,distance=..16] run effect give @s hunger 15 5 false
execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1