execute as @a[gamemode=survival,distance=..16] at @s run playsound minecraft:entity.elder_guardian.curse master @s ~ ~ ~ 1 1 1
execute at @s run function uhcp:titans/giga_creeper/tnt/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/tnt/summon_indicator
execute at @s run function uhcp:titans/giga_creeper/tnt/summon_indicator

execute at @s run spreadplayers ~ ~ 1 8 false @e[tag=UHCP_GigaCreeperTNT]

execute on target at @s run function uhcp:titans/giga_creeper/tnt/summon_indicator