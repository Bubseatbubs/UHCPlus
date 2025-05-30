execute in minecraft:overworld run forceload add -178 -225 -289 -178

tag @s add RED_BASE

function ssiege:start/bases/clear_red_surface
execute positioned over motion_blocking run tp @s -200 ~ -200

place template ssiege:red_base/origin ~ ~ ~ none none 1 0 strict
place template ssiege:red_base/bottom ~ ~-1 ~ none none 1 0 strict
place template ssiege:red_base/walkway ~-1 ~-11 ~27 180 none 1 0 strict
place template ssiege:red_base/spawn ~-44 ~-11 ~34 180 none 1 0 strict

execute at @s positioned ~ ~ ~ run function ssiege:start/bases/spawn_red_shopkeepers

execute in minecraft:overworld run forceload remove -178 -225 -289 -178