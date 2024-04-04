advancement revoke @s only uhcp:augments/stand_united
tag @s add UHCP_United
execute as @a[tag=!UHCP_United,distance=..4] if score @s uhcp_team = @p[tag=UHCP_United] uhcp_team run effect give @p[tag=UHCP_United] strength 1 0 false
tag @s remove UHCP_United