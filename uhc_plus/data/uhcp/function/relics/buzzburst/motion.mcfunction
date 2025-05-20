# Supply motion vector for launch
execute rotated as @p[tag=UHCP_Owner] run tp @s ^ ^ ^2
data modify entity @e[tag=UHCP_CurrentBuzzburst,limit=1] Motion set from entity @s Pos
tp @s 0.0 0.0 0.0
