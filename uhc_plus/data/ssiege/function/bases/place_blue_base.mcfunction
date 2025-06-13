tag @s add BLUE_BASE
tag @s add SSIEGE_BASE

function ssiege:bases/clear_blue_surface
execute positioned over motion_blocking run tp @s ~ ~ ~
execute positioned over motion_blocking run tp @s ~ ~ ~
forceload add ~ ~

execute at @s run place template ssiege:blue_base/origin ~-24 ~ ~-24 none none 1 0 strict
execute at @s run place template ssiege:blue_base/bottom ~-24 ~-1 ~-24 none none 1 0 strict
execute at @s run place template ssiege:blue_base/walkway ~23 ~-11 ~-4 none none 1 0 strict
execute at @s run place template ssiege:blue_base/spawn ~66 ~-11 ~-11 none none 1 0 strict

execute at @s positioned ~ ~ ~ run function ssiege:bases/sniffers/blue_sniffer_init
execute at @s positioned ~ ~ ~ run function ssiege:bases/inhibitors/init_blue
execute at @s positioned ~ ~ ~ run function ssiege:bases/turrets/init_blue
execute at @s positioned ~ ~ ~ run function ssiege:bases/spawn_blue_shopkeepers

execute as @a[team=blue] run function ssiege:bases/teleport_blue

execute at @s run fill ~-24 ~10 ~23 ~23 ~14 ~-27 minecraft:air
execute at @s run fill ~-24 ~35 ~23 ~23 ~35 ~-27 minecraft:barrier

execute at @s run fill ~-5 ~2 ~-5 ~4 ~6 ~4 minecraft:barrier
execute at @s run fill ~-5 ~8 ~-5 ~4 ~10 ~4 minecraft:barrier