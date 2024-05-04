clear @s *[custom_data~{uhcp_consumable:18b}] 1
execute in minecraft:overworld run weather thunder 12000t
effect give @s dolphins_grace infinite 4 false
tellraw @a {"text":"Clouds gather and rain pours down...","color":"blue"}