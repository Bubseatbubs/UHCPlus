# Reset player's attribute modifiers
# Also serves as a list of modifiers that may be reused for different use cases

# Max health
# Currently used by: Large and in Charge, Surface Duty, Zombie, Empty Hearted
attribute @s minecraft:generic.max_health modifier remove uhcp:max_health

# Game Max Health (+10 Hearts)
# Given to all players at the start of the game
attribute @s minecraft:generic.max_health modifier remove uhcp:game_max_health

# Block Breaking Speed
# Given to all players at the start of the game
attribute @s minecraft:player.block_break_speed modifier remove uhcp:block_break_speed

# Player Scale
# Currently used by: Prop Hunt, Lil'Bro, Lil'est Bro
attribute @s minecraft:generic.scale modifier remove uhcp:scale

# Fall Damage Multiplier
# Currently used by: Moon Walking
attribute @s minecraft:generic.fall_damage_multiplier modifier remove uhcp:fall_damage_multiplier

# Gravity Multiplier
# Currently used by: Moon Walking
attribute @s minecraft:generic.gravity modifier remove uhcp:gravity_multiplier

# Jump Strength
# Currently used by: Moon Walking
attribute @s minecraft:generic.jump_strength modifier remove uhcp:jump_strength

# Max Absorption
# Currently used by: Redstone Ritual, Cybernetic Download
attribute @s minecraft:generic.max_absorption modifier remove uhcp:max_absorption

# Armor Multiplier
# Currently used by: Hardstuck Iron
attribute @s minecraft:generic.armor modifier remove uhcp:armor_multiplier

# Knockback Resistance (Ferrum Scrap Metal)
# Used by: Ferrum Scrap Metal
# This attribute should be unique to Ferrum Scrap Metal only. Please make a new attribute modifier for Knockback Resistance if need be.
attribute @s minecraft:generic.knockback_resistance modifier remove uhcp:ferrum_scrap_metal

# Titan Spinal Fluid Attributes
# Many unique attributes for when the player becomes a Titan.
attribute @s minecraft:generic.scale modifier remove uhcp:titan_scale
attribute @s minecraft:player.entity_interaction_range modifier remove uhcp:titan_entity_range
attribute @s minecraft:generic.knockback_resistance modifier remove uhcp:titan_knockback_resistance
attribute @s minecraft:generic.jump_strength modifier remove uhcp:titan_jump_strength
attribute @s minecraft:generic.step_height modifier remove uhcp:titan_step_height
attribute @s minecraft:generic.fall_damage_multiplier modifier remove uhcp:titan_fall_damage_multiplier

# Movement Speed
# Currently used by: Boots of Swiftness (Armament)
attribute @s minecraft:generic.movement_speed modifier remove uhcp:movement_speed
