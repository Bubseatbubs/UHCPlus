execute store result score @s uhcp_initStatus run random value 0..34
execute store success score %success uhcp_initStatus run function ssiege:augments/effects/prismatic/trophy_hunter/spawn/check_advancement
execute if score %success uhcp_initStatus matches 1 run return run scoreboard players get @s uhcp_initStatus
function ssiege:augments/effects/prismatic/trophy_hunter/spawn/try