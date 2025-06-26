# Grant resistance for proper duration
execute store result storage uhcp:augments FossilFuel.seconds int 0.05 run scoreboard players get @s uhcp_game_time
function uhcp:augments/effects/silver/ironwill/duration with storage uhcp:augments FossilFuel
