execute store result bossbar minecraft:uhcp_titanhealth max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar minecraft:uhcp_titanhealth value run data get entity @s Health
bossbar set minecraft:uhcp_titanhealth players @a[distance=..16]
bossbar set minecraft:uhcp_titanhealth name {"selector":"@s","color":"gold"}

execute if entity @a[distance=..32,gamemode=survival] run scoreboard players add @s uhcp_t_timer 1
execute store result score %blocksfilled uhcp_t_count run fill ~-5 ~ ~-5 ~5 ~5 ~5 air replace #uhcp:titan_can_break
execute if score %blocksfilled uhcp_t_count matches 1.. run playsound block.gravel.break master @a[distance=..16] ~ ~ ~ 1 1 0.5
execute if score @s uhcp_t_timer matches 100.. run function uhcp:titans/attack
execute if entity @p[distance=24..48,gamemode=survival] facing entity @p eyes run function uhcp:titans/arachne/leap