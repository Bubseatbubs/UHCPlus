execute at @s run playsound minecraft:entity.zombie.ambient master @a[distance=..16] ~ ~ ~ 1 0.5 0.75
summon minecraft:silverfish ~ ~ ~ {Tags:["UHCP_Minion"],Health:20f,CustomName:'{"text":"Corpse Eater"}',Attributes:[{Name:generic.attack_damage,Base:6},{Name:generic.movement_speed,Base:0.24},{Name:generic.max_health,Base:20},{Name:generic.scale,Base:4}]}

execute as @a[gamemode=survival,distance=..16] run effect give @s minecraft:hunger 15 5 false
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1