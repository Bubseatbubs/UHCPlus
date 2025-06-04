tag @s add RED_BASE

function ssiege:bases/clear_red_surface
execute positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
forceload add ~ ~

place template ssiege:red_base/origin ~ ~ ~ none none 1 0 strict
place template ssiege:red_base/bottom ~ ~-1 ~ none none 1 0 strict
place template ssiege:red_base/walkway ~-1 ~-11 ~27 180 none 1 0 strict
place template ssiege:red_base/spawn ~-44 ~-11 ~34 180 none 1 0 strict

execute at @s positioned ~ ~ ~ run function ssiege:bases/sniffers/red_sniffer_init
execute at @s positioned ~ ~ ~ run function ssiege:bases/spawn_red_shopkeepers

execute at @s positioned ~-81 ~ ~ run spreadplayers ~ ~ 1 3 true @a[tag=!UHCP_Spectator,team=red]

execute at @s positioned ~ ~ ~ run fill ~-24 ~10 ~23 ~23 ~14 ~-24 minecraft:air
execute at @s positioned ~ ~ ~ run fill ~-24 ~35 ~23 ~23 ~35 ~-24 minecraft:barrier
execute at @s positioned ~ ~ ~ run fill ~-67 ~35 ~-4 ~-25 ~35 ~3 minecraft:barrier
execute at @s positioned ~ ~ ~ run fill ~-68 ~35 ~10 ~-88 ~35 ~-11 minecraft:barrier
