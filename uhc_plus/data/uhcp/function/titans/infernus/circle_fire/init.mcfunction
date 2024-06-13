execute at @s run function uhcp:titans/infernus/circle_fire/summon_circle
execute at @s run function uhcp:titans/infernus/circle_fire/summon_circle
execute at @s run function uhcp:titans/infernus/circle_fire/summon_circle
execute at @s run function uhcp:titans/infernus/circle_fire/summon_circle
execute at @s run function uhcp:titans/infernus/circle_fire/summon_circle
execute at @s run function uhcp:titans/infernus/circle_fire/summon_circle

execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
execute as @s at @s run spreadplayers ~ ~ 2 20 false @e[tag=UHCP_InfernusCircleStrike]

execute on target at @s run function uhcp:titans/infernus/circle_fire/summon_circle