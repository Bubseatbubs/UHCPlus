# Apply new effect if needed
execute if score %time uhcp_gameTime matches 36000.. run function uhcp:augments/effect/apply/gasgasgas

scoreboard players reset @s uhcp_a_leave
advancement revoke @s only uhcp:augments/effect/gasgasgas
