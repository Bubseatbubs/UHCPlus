attribute @s minecraft:attack_damage modifier remove uhcp:attack_damage
attribute @s minecraft:attack_speed modifier remove uhcp:attack_speed
execute if score @s ssiege_food_level matches 20 run return run effect give @s hunger infinite 1 true
effect give @s speed 1 0 false
attribute @s minecraft:attack_damage modifier add uhcp:attack_damage 2 add_value
attribute @s minecraft:attack_speed modifier add uhcp:attack_speed .15 add_multiplied_base