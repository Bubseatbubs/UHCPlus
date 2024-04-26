# Apply default effects
execute if score %night_vision uhcp_settings matches 1 run effect give @s minecraft:night_vision infinite 0 true

# Remove tag
tag @s remove UHCP_MilkBucket

# Apply augment effects
execute if score @s uhcp_augment matches 0..99 run return run function uhcp:milk_bucket/apply/augments/gold
execute if score @s uhcp_augment matches 100..199 run return run function uhcp:milk_bucket/apply/augments/silver
execute if score @s uhcp_augment matches 200..299 run function uhcp:milk_bucket/apply/augments/prismatic
