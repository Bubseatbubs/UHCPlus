tag @s add UHCP_Bite
scoreboard players reset @s uhcp_timer
playsound minecraft:entity.vex.charge master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:entity.vex.charge master @a[distance=..16] ~ ~ ~ 1 1 1
playsound minecraft:entity.vex.charge master @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:angry_villager ~ ~ ~ 1.5 1.5 1.5 0.1 100 normal

tag @a remove UHCP_SeraphimTarget
execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1