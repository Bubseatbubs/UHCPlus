execute as @a[gamemode=survival,distance=..16] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/lightning/summon_indicator

tag @e[tag=UHCP_GigaCreeperLightning,limit=3] add UHCP_LightningWave1
scoreboard players set @e[tag=UHCP_LightningWave1] uhcp_timer 0
execute as @e[tag=UHCP_LightningWave1] on passengers run scoreboard players set @s uhcp_timer 0
tag @e[tag=!UHCP_LightningWave1,tag=UHCP_GigaCreeperLightning,limit=3] add UHCP_LightningWave2
scoreboard players set @e[tag=UHCP_LightningWave2] uhcp_timer -10
execute as @e[tag=UHCP_LightningWave2] on passengers run scoreboard players set @s uhcp_timer -10
tag @e[tag=!UHCP_LightningWave1,tag=!UHCP_LightningWave2,tag=UHCP_GigaCreeperLightning,limit=3] add UHCP_LightningWave3
scoreboard players set @e[tag=UHCP_LightningWave3] uhcp_timer -20
execute as @e[tag=UHCP_LightningWave3] on passengers run scoreboard players set @s uhcp_timer -20

execute as @s at @s run spreadplayers ~ ~ 1 9 false @e[tag=UHCP_GigaCreeperLightning]