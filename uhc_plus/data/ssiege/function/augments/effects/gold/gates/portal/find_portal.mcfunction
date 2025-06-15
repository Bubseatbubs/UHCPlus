execute unless block ~ ~ ~ #air run return run function ssiege:augments/effects/gold/gates/portal/set_coords

scoreboard players remove @s uhcp_initStatus 1

execute if score @s uhcp_initStatus matches ..0 run function ssiege:augments/effects/gold/gates/portal/set_coords

execute if score @s uhcp_initStatus matches 1.. run execute rotated ~ ~.9 positioned ^ ^ ^0.4 run function ssiege:augments/effects/gold/gates/portal/find_portal