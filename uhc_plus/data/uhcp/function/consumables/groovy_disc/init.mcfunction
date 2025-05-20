scoreboard players reset @s uhcp_leave
tag @a[distance=..50,gamemode=survival] add UHCP_Groovy
effect give @a[tag=UHCP_Groovy] minecraft:glowing 30 0 true 
effect give @a[tag=UHCP_Groovy] minecraft:blindness 30 1 true 

tellraw @a[tag=UHCP_Groovy] [{"selector":"@s","color":"#47FF4E"},{"text":" started a rave... you were inflicted with\n","color":"#00FF22","bold":false},{"text":"Blindness and Glowing","color":"dark_red"},{"text":"!","color":"#00FF22","bold":false}]
tellraw @a[distance=..50,gamemode=!survival] [{"selector":"@s","color":"#47FF4E"},{"text":" started a rave... players were inflicted with\n","color":"#00FF22","bold":false},{"text":"Blindness and Glowing","color":"dark_red"},{"text":"!","color":"#00FF22","bold":false}]
execute as @a[tag=UHCP_Groovy] at @s run function uhcp:consumables/groovy_disc/effects
scoreboard players set @a[tag=UHCP_Groovy] uhcp_groovy 1
tag @a remove UHCP_Groovy

execute unless score @s uhcp_augment matches 118 run return fail
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 6000
