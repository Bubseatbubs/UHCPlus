# Transform players
tag @a[distance=..9] add UHCP_Rabbit
scoreboard players set @a[tag=UHCP_Rabbit] uhcp_leave 1000
execute as @a[tag=UHCP_Rabbit,gamemode=survival] at @s run function uhcp:consumables/magic_trick/transform
tellraw @a[tag=UHCP_Rabbit,gamemode=!survival] {"text":"Players have been transformed into rabbits!","color":"dark_red"}
scoreboard players reset @a[tag=UHCP_Rabbit] uhcp_leave
tag @a remove UHCP_Rabbit

# Bunny magic
execute unless score @s uhcp_augment matches 122 run return fail
scoreboard players operation @s uhcp_game_time = %time uhcp_game_time
scoreboard players add @s uhcp_game_time 3600
