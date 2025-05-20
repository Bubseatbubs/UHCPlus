execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
execute at @s run function uhcp:titans/arachne/cobwebs/summon_indicator
execute at @s run function uhcp:titans/arachne/cobwebs/summon_indicator
execute at @s as @a[gamemode=survival,distance=..16] run function uhcp:titans/arachne/cobwebs/summon_indicator

execute at @s run spreadplayers ~ ~ 1 18 false @e[tag=UHCP_ArachneCobweb]



execute on target at @s run function uhcp:titans/arachne/cobwebs/summon_indicator