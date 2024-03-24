execute at @s run playsound entity.zombie.ambient master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
summon silverfish ~ ~ ~ {Health:10f,CustomName:'{"text":"Corpse Eater"}',Attributes:[{Name:generic.attack_damage,Base:6},{Name:generic.gravity,Base:0.04},{Name:generic.scale,Base:4}]}

execute as @a[gamemode=survival,distance=..16] run effect give @s hunger 15 5 false
execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1