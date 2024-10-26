# Supply motion vector for launch
execute rotated as @p[tag=UHCP_Owner] run tp @s ^ ^ ^0.1
execute store result entity @e[tag=UHCP_CurrentBuzzburst,limit=1] Motion[0] double 0.00002 run data get entity @s Pos[0] 1000000
execute store result entity @e[tag=UHCP_CurrentBuzzburst,limit=1] Motion[1] double 0.00002 run data get entity @s Pos[1] 1000000
execute store result entity @e[tag=UHCP_CurrentBuzzburst,limit=1] Motion[2] double 0.00002 run data get entity @s Pos[2] 1000000
tp @s 0.0 0.0 0.0
