tag @s add BLUE_BASE

function ssiege:bases/clear_blue_surface
execute positioned over motion_blocking_no_leaves run tp @s 120 ~ 120
forceload add ~ ~

place template ssiege:blue_base/origin ~ ~ ~ none none 1 0 strict
place template ssiege:blue_base/bottom ~ ~-1 ~ none none 1 0 strict
place template ssiege:blue_base/walkway ~47 ~-11 ~20 none none 1 0 strict
place template ssiege:blue_base/spawn ~90 ~-11 ~13 none none 1 0 strict

execute at @s positioned ~ ~ ~ run function ssiege:bases/sniffers/blue_sniffer_init
execute at @s positioned ~ ~ ~ run function ssiege:bases/spawn_blue_shopkeepers

execute at @s positioned ~80 ~ ~ run spreadplayers ~ ~ 1 3 true @a[tag=!UHCP_Spectator,team=blue]

execute at @s run fill ~-24 ~10 ~23 ~23 ~14 ~-27 minecraft:air
execute at @s run fill ~-24 ~35 ~23 ~23 ~35 ~-27 minecraft:barrier
execute at @s run fill ~24 ~35 ~-4 ~65 ~35 ~3 minecraft:barrier
execute at @s run fill ~66 ~35 ~-11 ~86 ~35 ~10 minecraft:barrier