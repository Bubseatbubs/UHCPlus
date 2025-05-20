scoreboard players reset @s uhcp_leave
tag @s add UHCP_HighTide
execute in minecraft:overworld run weather thunder 12000t
effect give @s minecraft:dolphins_grace infinite 4 false
tellraw @a {"text":"Clouds gather and rain pours down...","color":"blue"}
