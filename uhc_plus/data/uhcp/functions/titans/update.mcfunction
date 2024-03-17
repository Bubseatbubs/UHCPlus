execute store result bossbar minecraft:uhcp_titanhealth max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar minecraft:uhcp_titanhealth value run data get entity @s Health
bossbar set minecraft:uhcp_titanhealth players @a[distance=..16]
bossbar set minecraft:uhcp_titanhealth name {"selector":"@s","color":"gold"}

execute if entity @a[distance=..32,gamemode=survival] run scoreboard players add @s uhcp_t_timer 1

execute if entity @s[tag=UHCP_Arachne] at @s run function uhcp:titans/arachne/update
execute if entity @s[tag=UHCP_Gigantus] at @s run function uhcp:titans/gigantus/update

execute if score @s uhcp_t_timer matches 100.. run function uhcp:titans/attack