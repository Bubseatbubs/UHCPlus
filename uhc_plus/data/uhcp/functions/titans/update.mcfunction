execute if function uhcp:titans/check_aggression run scoreboard players add @s uhcp_t_timer 1

execute if entity @s[tag=UHCP_Arachne] at @s run function uhcp:titans/arachne/update
execute if entity @s[tag=UHCP_Gigantus] at @s run function uhcp:titans/gigantus/update
execute if entity @s[tag=UHCP_Fenrir] at @s run function uhcp:titans/fenrir/update
execute if entity @s[tag=UHCP_BoneColossus] at @s run function uhcp:titans/bone_colossus/update
execute if entity @s[tag=UHCP_GigaCreeper] at @s run function uhcp:titans/giga_creeper/update
execute if entity @s[tag=UHCP_Triton] at @s run function uhcp:titans/triton/update
execute if entity @s[tag=UHCP_Seraphim] at @s run function uhcp:titans/seraphim/update

execute if score @s uhcp_t_timer matches 200.. run function uhcp:titans/attack