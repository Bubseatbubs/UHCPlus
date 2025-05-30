execute in minecraft:overworld run forceload add 176 176 286 224

tag @s add BLUE_BASE

function ssiege:start/bases/clear_blue_surface
spreadplayers 176 176 0 1 false @s
tp @s 176 ~ 176

place template ssiege:blue_base/origin ~ ~ ~ none none 1 0 strict
place template ssiege:blue_base/bottom ~ ~-1 ~ none none 1 0 strict
place template ssiege:blue_base/walkway ~47 ~-11 ~20 none none 1 0 strict
place template ssiege:blue_base/spawn ~90 ~-11 ~13 none none 1 0 strict

execute at @s positioned ~ ~ ~ run function ssiege:start/bases/spawn_blue_shopkeepers

execute in minecraft:overworld run forceload remove 176 176 286 224