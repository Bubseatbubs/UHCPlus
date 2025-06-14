tag @s add RED_BASE
tag @s add SSIEGE_BASE

function ssiege:bases/clear_red_surface
execute positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
forceload add ~ ~

execute at @s run place template ssiege:red_base/origin ~-24 ~ ~-24 none none 1 0 strict
execute at @s run place template ssiege:red_base/bottom ~-24 ~-1 ~-24 none none 1 0 strict
execute at @s run place template ssiege:red_base/walkway ~-25 ~-11 ~3 180 none 1 0 strict
execute at @s run place template ssiege:red_base/spawn ~-68 ~-11 ~10 180 none 1 0 strict

execute at @s positioned ~ ~ ~ run function ssiege:bases/sniffers/red_sniffer_init
execute at @s positioned ~ ~ ~ run function ssiege:bases/inhibitors/init_red
execute at @s positioned ~ ~ ~ run function ssiege:bases/turrets/init_red
execute at @s positioned ~ ~ ~ run function ssiege:bases/spawn_red_shopkeepers

execute as @a[team=red] run function ssiege:bases/teleport_red

execute at @s positioned ~ ~ ~ run fill ~-24 ~10 ~23 ~23 ~14 ~-24 minecraft:air
execute at @s positioned ~ ~ ~ run fill ~-24 ~35 ~23 ~23 ~35 ~-24 minecraft:barrier

execute at @s run fill ~-5 ~2 ~-5 ~4 ~6 ~4 minecraft:barrier
execute at @s run fill ~-5 ~8 ~-5 ~4 ~10 ~4 minecraft:barrier
execute at @s run fill ~-5 ~4 ~-5 ~4 ~4 ~4 minecraft:glass