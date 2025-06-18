# Randomize array for items
execute store result score %sh_range uhcp_initStatus run random value 1..232792560
scoreboard players operation %sh_range uhcp_initStatus %= %sh_last uhcp_initStatus
function uhcp:augments/effects/gold/scavengerhunt/locate

execute if score %sh_last uhcp_initStatus matches 14 run return fail
scoreboard players remove %sh_last uhcp_initStatus 1
function uhcp:augments/effects/gold/scavengerhunt/array
