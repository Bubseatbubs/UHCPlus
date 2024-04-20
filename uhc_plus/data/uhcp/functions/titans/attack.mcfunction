scoreboard players reset @s uhcp_titans_timer
execute store result score @s uhcp_titans_attack run random value 0..2

execute if entity @s[tag=UHCP_Arachne] run function uhcp:titans/arachne/attack
execute if entity @s[tag=UHCP_Gigantus] run function uhcp:titans/gigantus/attack
execute if entity @s[tag=UHCP_Fenrir] run function uhcp:titans/fenrir/attack
execute if entity @s[tag=UHCP_BoneColossus] run function uhcp:titans/bone_colossus/attack
execute if entity @s[tag=UHCP_GigaCreeper] at @s run function uhcp:titans/giga_creeper/attack
execute if entity @s[tag=UHCP_Triton] at @s run function uhcp:titans/triton/attack
execute if entity @s[tag=UHCP_Seraphim] at @s run function uhcp:titans/seraphim/attack
execute if entity @s[tag=UHCP_Ferrum] at @s run function uhcp:titans/ferrum/attack
execute if entity @s[tag=UHCP_Infernus] at @s run function uhcp:titans/infernus/attack
execute if entity @s[tag=UHCP_Tyrion] at @s run function uhcp:titans/tyrion/attack
execute if entity @s[tag=UHCP_Gerald] at @s run function uhcp:titans/gerald/attack
