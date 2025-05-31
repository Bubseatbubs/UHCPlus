execute in minecraft:overworld run forceload add 176 176 286 224

tag @s add BLUE_BASE

function ssiege:start/bases/clear_blue_surface
execute positioned over motion_blocking_no_leaves run tp @s 200 ~ 200

place template ssiege:blue_base/origin ~ ~ ~ none none 1 0 strict
place template ssiege:blue_base/bottom ~ ~-1 ~ none none 1 0 strict
place template ssiege:blue_base/walkway ~47 ~-11 ~20 none none 1 0 strict
place template ssiege:blue_base/spawn ~90 ~-11 ~13 none none 1 0 strict

execute at @s positioned ~ ~ ~ run function ssiege:start/bases/sniffers/blue_sniffer_init
execute at @s positioned ~ ~ ~ run function ssiege:start/bases/spawn_blue_shopkeepers

spreadplayers 280 200 1 3 true @a[tag=!UHCP_Spectator,team=blue]

execute at @s positioned ~ ~ ~ run fill 176 ~10 223 223 ~14 173 minecraft:air
execute at @s positioned ~ ~ ~ run fill 176 ~15 223 223 ~15 173 minecraft:barrier
execute at @s positioned ~ ~ ~ run fill 224 ~15 196 265 ~15 203 minecraft:barrier
execute at @s positioned ~ ~ ~ run fill 266 ~15 189 286 ~15 210 minecraft:barrier

execute in minecraft:overworld run forceload remove 176 176 286 224