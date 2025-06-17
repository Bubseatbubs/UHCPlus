execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]

scoreboard players operation @n[tag=SSIEGE_BASE] uhcp_initStatus < @s uhcp_initStatus