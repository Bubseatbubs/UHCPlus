scoreboard players add @s uhcp_a_timer 1
execute at @s as @p[distance=..1] run ride @s mount @e[tag=UHCP_Temp,sort=nearest,limit=1,distance=..1]
execute unless score @s uhcp_a_timer matches 20.. run return 0
kill @s
