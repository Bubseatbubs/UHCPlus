execute at @s run playsound entity.zombie.ambient master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
summon guardian ~ ~ ~ {Health:5f,PuffState:2,Attributes:[{Name:generic.scale,Base:3}]}

execute as @a[gamemode=survival,distance=..16] run effect give @s slowness 8 1 false
execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1