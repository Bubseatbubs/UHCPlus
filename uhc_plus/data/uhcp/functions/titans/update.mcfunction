execute store result bossbar minecraft:uhcp_titanhealth max run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base
execute store result bossbar minecraft:uhcp_titanhealth value run data get entity @s Health
bossbar set minecraft:uhcp_titanhealth players @a[distance=..32]
bossbar set minecraft:uhcp_titanhealth name {"selector":"@s","color":"gold"}

execute if function uhcp:titans/check_aggression run scoreboard players add @s uhcp_t_timer 1
tag @s add UHCP_CurrentTitan
execute as @a[distance=..3.5] run damage @s 4 mob_attack by @e[tag=UHCP_CurrentTitan,sort=nearest,limit=1]
tag @s remove UHCP_CurrentTitan

execute if entity @s[tag=UHCP_Arachne] at @s run function uhcp:titans/arachne/update
execute if entity @s[tag=UHCP_Gigantus] at @s run function uhcp:titans/gigantus/update
execute if entity @s[tag=UHCP_Fenrir] at @s run function uhcp:titans/fenrir/update
execute if entity @s[tag=UHCP_BoneColossus] at @s run function uhcp:titans/bone_colossus/update

execute if score @s uhcp_t_timer matches 200.. run function uhcp:titans/attack