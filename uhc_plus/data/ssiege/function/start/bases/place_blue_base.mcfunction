execute in minecraft:overworld run forceload add 176 176 286 224

tag @s add BLUE_BASE

function ssiege:start/bases/clear_blue_surface
execute positioned over motion_blocking run tp @s 200 ~ 200

place template ssiege:blue_base/origin ~ ~ ~ none none 1 0 strict
place template ssiege:blue_base/bottom ~ ~-1 ~ none none 1 0 strict
place template ssiege:blue_base/walkway ~47 ~-11 ~20 none none 1 0 strict
place template ssiege:blue_base/spawn ~90 ~-11 ~13 none none 1 0 strict

execute at @s positioned ~-24 ~ ~-24 run function ssiege:start/bases/spawn_blue_shopkeepers


execute in minecraft:overworld run forceload remove 176 176 286 224