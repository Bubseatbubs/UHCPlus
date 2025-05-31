execute in minecraft:overworld run forceload add -178 -225 -289 -178

tag @s add RED_BASE

function ssiege:bases/clear_red_surface
execute positioned over motion_blocking_no_leaves run tp @s -200 ~ -200

place template ssiege:red_base/origin ~ ~ ~ none none 1 0 strict
place template ssiege:red_base/bottom ~ ~-1 ~ none none 1 0 strict
place template ssiege:red_base/walkway ~-1 ~-11 ~27 180 none 1 0 strict
place template ssiege:red_base/spawn ~-44 ~-11 ~34 180 none 1 0 strict

execute at @s positioned ~ ~ ~ run function ssiege:bases/sniffers/red_sniffer_init
execute at @s positioned ~ ~ ~ run function ssiege:bases/spawn_red_shopkeepers

spreadplayers -281 -200 1 3 true @a[tag=!UHCP_Spectator,team=red]

execute at @s positioned ~ ~ ~ run fill -224 ~10 -177 -177 ~14 -224 minecraft:air
execute at @s positioned ~ ~ ~ run fill -224 ~15 -177 -177 ~15 -224 minecraft:barrier
execute at @s positioned ~ ~ ~ run fill -267 ~15 -204 -225 ~15 -197 minecraft:barrier
execute at @s positioned ~ ~ ~ run fill -268 ~15 -190 -288 ~15 -211 minecraft:barrier

execute in minecraft:overworld run forceload remove -178 -225 -289 -178