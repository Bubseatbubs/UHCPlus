execute as @e[tag=UHCP_TitanSpawn] if score @s uhcp_t_count matches 1 at @s positioned ~ ~1 ~ run function uhcp:titans/arachne/init
execute as @e[tag=UHCP_TitanSpawn] if score @s uhcp_t_count matches 2 at @s positioned ~ ~1 ~ run function uhcp:titans/gigantus/init
execute as @e[tag=UHCP_TitanSpawn] if score @s uhcp_t_count matches 3 at @s positioned ~ ~1 ~ run function uhcp:titans/fenrir/init
execute as @e[tag=UHCP_TitanSpawn] if score @s uhcp_t_count matches 4 at @s positioned ~ ~1 ~ run function uhcp:titans/bone_colossus/init
execute as @e[tag=UHCP_TitanSpawn] if score @s uhcp_t_count matches 5 at @s positioned ~ ~1 ~ run function uhcp:titans/giga_creeper/init
execute as @e[tag=UHCP_TitanSpawn] if score @s uhcp_t_count matches 6 at @s positioned ~ ~1 ~ run function uhcp:titans/triton/init
execute as @e[tag=UHCP_AltarDisplay,sort=nearest,limit=1] on passengers run kill @s
execute as @e[tag=UHCP_AltarDisplay,sort=nearest,limit=1] run kill @s
tellraw @a "Titans have spawned."
execute as @e[tag=UHCP_TitanSpawn] at @s run fill ~-4 ~ ~-4 ~4 ~8 ~4 air replace barrier
execute as @e[tag=UHCP_TitanSpawn] at @s run playsound block.end_portal.spawn master @a[distance=..16] ~ ~ ~ 1 1 0.6
execute as @e[tag=UHCP_TitanSpawn] at @s run particle reverse_portal ~ ~ ~ 3 3 3 0.1 100 normal
execute as @e[tag=UHCP_TitanSpawn] at @s run particle flash ~ ~ ~ 0.1 0.1 0.1 0.1 10 normal
execute as @e[tag=UHCP_TitanSpawn] at @s run forceload remove ~-6 ~-6 ~6 ~6
execute as @a at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1 0.5 1
