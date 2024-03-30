# Run team selection logic 
scoreboard players enable @a team
execute as @a if score @s team matches 1..99 run function uhcp:lobby/team/menu
execute as @a at @s if score @s team matches 100..115 run function uhcp:lobby/team/select
