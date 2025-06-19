tag @s add BLUE_BASE
tag @s add SSIEGE_BASE

execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~

summon marker ~ ~ ~-25 {Tags:["SSIEGE_edge"]}
summon marker ~ ~ ~25 {Tags:["SSIEGE_edge"]}
summon marker ~-25 ~ ~ {Tags:["SSIEGE_edge"]}

execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute as @e[type=marker,tag=SSIEGE_edge] run function ssiege:bases/find_y

execute store result storage ssiege:temp base.y int 1.0 run scoreboard players get @s uhcp_initStatus
function ssiege:bases/set_y_macro with storage ssiege:temp base

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
execute at @s run fill ~-5 ~8 ~-5 ~4 ~11 ~4 minecraft:barrier

summon marker ~77 ~ ~ {Tags:["SSIEGE_HealingAura"]}
kill @e[type=marker,tag=SSIEGE_edge]