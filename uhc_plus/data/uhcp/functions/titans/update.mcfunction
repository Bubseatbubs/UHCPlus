execute if function uhcp:titans/check_aggression run scoreboard players add @s uhcp_titans_timer 1

execute if entity @s[tag=UHCP_Arachne] at @s run function uhcp:titans/arachne/update
execute if entity @s[tag=UHCP_Gigantus] at @s run function uhcp:titans/gigantus/update
execute if entity @s[tag=UHCP_Fenrir] at @s run function uhcp:titans/fenrir/update
execute if entity @s[tag=UHCP_BoneColossus] at @s run function uhcp:titans/bone_colossus/update
execute if entity @s[tag=UHCP_GigaCreeper] at @s run function uhcp:titans/giga_creeper/update
execute if entity @s[tag=UHCP_Triton] at @s run function uhcp:titans/triton/update
execute if entity @s[tag=UHCP_Seraphim] at @s run function uhcp:titans/seraphim/update
execute if entity @s[tag=UHCP_Ferrum] at @s run function uhcp:titans/ferrum/update
execute if entity @s[tag=UHCP_Infernus] at @s run function uhcp:titans/infernus/update
execute if entity @s[tag=UHCP_Tyrion] at @s run function uhcp:titans/tyrion/update
execute if entity @s[tag=UHCP_Gerald] at @s run function uhcp:titans/gerald/update

execute if score @s uhcp_titans_timer matches 200.. run function uhcp:titans/attack
