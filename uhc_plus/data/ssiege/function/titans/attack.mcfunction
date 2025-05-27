scoreboard players reset @s uhcp_titans_timer
execute store result score @s uhcp_titans_attack run random value 0..2

execute as @s[tag=UHCP_Arachne] run return run function uhcp:titans/arachne/attack
execute as @s[tag=UHCP_Gigantus] run return run function uhcp:titans/gigantus/attack
execute as @s[tag=UHCP_Fenrir] run return run function uhcp:titans/fenrir/attack
execute as @s[tag=UHCP_BoneColossus] run return run function uhcp:titans/bone_colossus/attack
execute at @s[tag=UHCP_GigaCreeper] run return run function uhcp:titans/giga_creeper/attack
execute at @s[tag=UHCP_Triton] run return run function uhcp:titans/triton/attack
execute at @s[tag=UHCP_Seraphim] run return run function uhcp:titans/seraphim/attack
execute at @s[tag=UHCP_Ferrum] run return run function uhcp:titans/ferrum/attack
execute at @s[tag=UHCP_Infernus] run return run function uhcp:titans/infernus/attack
execute at @s[tag=UHCP_Tyrion] run return run function uhcp:titans/tyrion/attack
execute at @s[tag=UHCP_Gerald] run return run function uhcp:titans/gerald/attack
execute at @s[tag=UHCP_Gallie] run function uhcp:titans/gallie/attack
