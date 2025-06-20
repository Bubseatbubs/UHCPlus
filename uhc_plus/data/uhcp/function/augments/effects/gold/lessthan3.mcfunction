effect give @s minecraft:absorption infinite 0 false
give @s minecraft:golden_apple 2

# Partially raise max health (completely raise afterward)
attribute @s minecraft:max_health modifier add uhcp:max_health 8.0 add_value
effect give @s minecraft:instant_health 1 0 true
