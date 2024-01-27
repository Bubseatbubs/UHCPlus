# Hunger effect
execute unless score %h_max uhcp_settings matches -100 if score %uhcp_hungerInit uhcp_initStatus matches 1.. as @a at @s run function uhcp:hunger/update
scoreboard players enable @a hunger
execute as @a if score @s hunger matches 1.. unless score %uhcp_hungerInit uhcp_initStatus matches 1.. at @s run function uhcp:hunger/init
execute as @a if score @s hunger matches 1.. if score %uhcp_hungerInit uhcp_initStatus matches 1.. at @s run function uhcp:hunger/disable

# Hunger timer
execute unless score %uhcp_hungerInit uhcp_initStatus matches 1.. if score %h_set uhcp_settings matches 0 run scoreboard players add %hunger_timer uhcp_gameTime 1
execute unless score %uhcp_hungerInit uhcp_initStatus matches 1.. if score %hunger_timer uhcp_gameTime matches 48000..50000 as @a run function uhcp:hunger/init
