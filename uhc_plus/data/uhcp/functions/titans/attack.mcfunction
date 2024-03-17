scoreboard players reset @s uhcp_t_timer
execute store result score @s uhcp_t_attack run random value 0..2

execute if entity @s[tag=UHCP_Arachne] run function uhcp:titans/arachne/attack
execute if entity @s[tag=UHCP_Gigantus] run function uhcp:titans/gigantus/attack