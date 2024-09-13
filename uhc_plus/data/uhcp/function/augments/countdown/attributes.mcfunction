# Grant increased block breaking speed
attribute @s minecraft:block_break_speed modifier add uhcp:block_break_speed 1.2 add_multiplied_total

# Interaction ranges
execute unless score @s uhcp_augment matches 101 run function uhcp:augments/countdown/interaction_range
