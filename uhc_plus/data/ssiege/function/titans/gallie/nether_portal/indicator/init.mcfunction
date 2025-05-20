execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
execute at @s run function uhcp:titans/gallie/nether_portal/indicator/summon_indicator
execute at @s run function uhcp:titans/gallie/nether_portal/indicator/summon_indicator
execute at @s run function uhcp:titans/gallie/nether_portal/indicator/summon_indicator

tag @e[tag=UHCP_GallieNetherPortal,limit=1] add UHCP_NetherPortalWave1
scoreboard players set @e[tag=UHCP_NetherPortalWave1] uhcp_timer 0
tag @e[tag=!UHCP_NetherPortalWave1,tag=UHCP_GallieNetherPortal,limit=1] add UHCP_NetherPortalWave2
scoreboard players set @e[tag=UHCP_NetherPortalWave2] uhcp_timer -15
tag @e[tag=!UHCP_NetherPortalWave1,tag=!UHCP_NetherPortalWave2,tag=UHCP_GallieNetherPortal,limit=1] add UHCP_NetherPortalWave3
scoreboard players set @e[tag=UHCP_NetherPortalWave3] uhcp_timer -30

execute at @s run spreadplayers ~ ~ 1 9 false @e[tag=UHCP_GallieNetherPortal]