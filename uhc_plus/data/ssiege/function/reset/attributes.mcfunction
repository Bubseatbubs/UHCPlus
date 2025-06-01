# Reset player's attribute modifiers
# Also serves as a list of modifiers that may be reused for different use cases

# SHOP ATTRIBUTES
# CAN'T BE BOTHERED TO CATEGORIZE THEM ALL SRY

attribute @s minecraft:armor modifier remove ssiege:rune_armor
attribute @s minecraft:armor_toughness modifier remove ssiege:rune_armor_toughness
attribute @s minecraft:attack_speed modifier remove ssiege:rune_aspeed
attribute @s minecraft:movement_speed modifier remove ssiege:rune_mspeed
attribute @s minecraft:attack_damage modifier remove ssiege:rune_strength

# Max health
# Currently used by: Large and in Charge, Surface Duty, Zombie, Empty Hearted
attribute @s minecraft:max_health modifier remove uhcp:max_health

# Game Max Health (+10 Hearts)
# Given to all players at the start of the game
attribute @s minecraft:max_health modifier remove uhcp:game_max_health

# Block Breaking Speed
# Given to all players at the start of the game
attribute @s minecraft:block_break_speed modifier remove uhcp:block_break_speed

# Augment selection interaction ranges
attribute @s minecraft:block_interaction_range modifier remove uhcp:start_block_range
attribute @s minecraft:entity_interaction_range modifier remove uhcp:start_entity_range

# Player Scale
# Currently used by: Prop Hunt, Lil'Bro, Lil'est Bro
attribute @s minecraft:scale modifier remove uhcp:scale

# Fall Damage Multiplier
# Currently used by: Moon Walking
attribute @s minecraft:fall_damage_multiplier modifier remove uhcp:fall_damage_multiplier

# Gravity Multiplier
# Currently used by: Moon Walking
attribute @s minecraft:gravity modifier remove uhcp:gravity_multiplier

# Jump Strength
# Currently used by: Moon Walking
attribute @s minecraft:jump_strength modifier remove uhcp:jump_strength

# Step Height
# Currently used by: large and in charge
attribute @s step_height modifier remove uhcp:step_height

# Entity Interaction Range
# Currently used by: large and in charge
attribute @s entity_interaction_range modifier remove uhcp:entity_interaction_range

# Block Interaction Range
# Currently used by: large and in charge
attribute @s block_interaction_range modifier remove uhcp:block_interaction_range

# Max Absorption
# Currently used by: Redstone Ritual, Cybernetic Download
attribute @s minecraft:max_absorption modifier remove uhcp:max_absorption

# Armor Multiplier
# Currently used by: Hardstuck Iron
attribute @s minecraft:armor modifier remove uhcp:armor_multiplier

# Knockback Resistance (Ferrum Scrap Metal)
# Used by: Ferrum Scrap Metal
# This attribute should be unique to Ferrum Scrap Metal only. Please make a new attribute modifier for Knockback Resistance if need be.
attribute @s minecraft:knockback_resistance modifier remove uhcp:ferrum_scrap_metal

# Titan Spinal Fluid Attributes
# Many unique attributes for when the player becomes a Titan.
attribute @s minecraft:scale modifier remove uhcp:titan_scale
attribute @s minecraft:entity_interaction_range modifier remove uhcp:titan_entity_range
attribute @s minecraft:knockback_resistance modifier remove uhcp:titan_knockback_resistance
attribute @s minecraft:jump_strength modifier remove uhcp:titan_jump_strength
attribute @s minecraft:step_height modifier remove uhcp:titan_step_height
attribute @s minecraft:fall_damage_multiplier modifier remove uhcp:titan_fall_damage_multiplier

# Movement Speed
# Currently used by: Boots of Swiftness (Armament)
attribute @s minecraft:movement_speed modifier remove uhcp:movement_speed

# Gravity globe
attribute @s minecraft:gravity modifier remove uhcp:gravity_globe

# Panda transformation attributes
attribute @s minecraft:armor modifier remove uhcp:panda_armor
attribute @s minecraft:scale modifier remove uhcp:panda_scale

# Rabbit transformation block range
attribute @s minecraft:block_interaction_range modifier remove uhcp:rabbit_block_range

# Sniffer Siege Majority encounter
attribute @s minecraft:safe_fall_distance modifier remove uhcp:safe_fall_distance