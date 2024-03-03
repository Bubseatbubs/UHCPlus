scoreboard players reset @s uhcp_t_timer
execute store result score @s uhcp_t_attack run random value 0..2

execute if entity @s[tag=UHCP_Arachne] if score @s uhcp_t_attack matches 0 at @s run function uhcp:titans/arachne/cobwebs
execute if entity @s[tag=UHCP_Arachne] if score @s uhcp_t_attack matches 1 at @s run function uhcp:titans/arachne/blindness
execute if entity @s[tag=UHCP_Arachne] if score @s uhcp_t_attack matches 2 at @s run function uhcp:titans/arachne/spiders/spiders