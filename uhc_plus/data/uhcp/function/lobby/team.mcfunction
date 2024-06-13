# Run team selection logic 
scoreboard players enable @a team
execute as @a[scores={team=1..99}] run function uhcp:lobby/team/menu
execute as @a[scores={team=100..115}] at @s run function uhcp:lobby/team/select
