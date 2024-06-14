execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
function uhcp:titans/seraphim/laser/indicator/summon_indicator

execute at @s run spreadplayers ~ ~ 1 10 false @e[tag=UHCP_SeraphimLaserIndicator]
execute at @a[distance=..16,gamemode=survival,limit=3] run function uhcp:titans/seraphim/laser/indicator/summon_indicator
