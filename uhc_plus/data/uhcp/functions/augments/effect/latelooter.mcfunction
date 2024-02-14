# Apply new effect if needed
execute if score %time uhcp_gameTime matches 9600.. run function uhcp:augments/effect/apply/latelooter

scoreboard players reset @s uhcp_a_leave
advancement revoke @s only uhcp:augments/effect/latelooter
