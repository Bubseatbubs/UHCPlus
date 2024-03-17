execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
execute as @e[tag=UHCP_GraveMarker,distance=..16] at @s run summon zombie ~0.5 ~1.5 ~0.5 {Motion:[0.0,0.,0.0]}
execute at @e[tag=UHCP_GraveMarker,distance=..16] run particle soul ~0.5 ~0.5 ~0.5 0.6 0.6 0.6 0.1 40 normal
execute as @e[tag=UHCP_GraveMarker,distance=..16] at @s run playsound block.beehive.exit master @a[distance=..4] ~ ~ ~ 1 1 0.75
execute as @e[tag=UHCP_GraveMarker,distance=..16] at @s run playsound entity.zombie.ambient master @a[distance=..9] ~ ~ ~ 1 1 0.75