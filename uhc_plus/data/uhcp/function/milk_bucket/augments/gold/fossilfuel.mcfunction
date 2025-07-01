# Apply speed
execute store result storage uhcp:augments FossilFuel.seconds int 0.05 run scoreboard players get @s uhcp_timer
function uhcp:augments/effects/gold/fossilfuel/speed with storage uhcp:augments FossilFuel
