# Reset player's attribute modifiers
# Also serves as a list of modifiers that may be reused for different use cases

# Max health
# Currently used by: Large and in Charge, Surface Duty, Zombie, Empty Hearted
#alias uuid UHCP_MaxHealth bcae8a4d-80b1-4a6b-9eaf-e9efa3044754
attribute @s minecraft:generic.max_health modifier remove bcae8a4d-80b1-4a6b-9eaf-e9efa3044754

# Game Max Health (+10 Hearts)
# Given to all players at the start of the game
#alias uuid UHCP_GameMaxHealth 5ae70886-031a-42b7-aa86-783c9536c746
attribute @s minecraft:generic.max_health modifier remove 5ae70886-031a-42b7-aa86-783c9536c746

# Block Breaking Speed
# Given to all players at the start of the game
#alias uuid UHCP_BlockBreakSpeed 4329681b-2b41-4dc1-8b3a-4a5ebae3c1ce
attribute @s minecraft:player.block_break_speed modifier remove 4329681b-2b41-4dc1-8b3a-4a5ebae3c1ce

# Player Scale
# Currently used by: Prop Hunt, Lil'Bro, Lil'est Bro
#alias uuid UHCP_Scale 46eca67f-7103-4d35-a3b7-1576bf42ca48
attribute @s generic.scale modifier remove 46eca67f-7103-4d35-a3b7-1576bf42ca48

# Fall Damage Multiplier
# Currently used by: Moon Walking
#alias uuid UHCP_FallDamageMultiplier 64dfcb79-144e-4edb-880b-c355033bf7eb
attribute @s minecraft:generic.fall_damage_multiplier modifier remove 64dfcb79-144e-4edb-880b-c355033bf7eb

# Gravity Multiplier
# Currently used by: Moon Walking
#alias uuid UHCP_GravityMultiplier d4d5e5c8-fa24-44a8-83a4-dc4a8ee95c3f
attribute @s minecraft:generic.gravity modifier remove d4d5e5c8-fa24-44a8-83a4-dc4a8ee95c3f

# Jump Strength
# Currently used by: Moon Walking
#alias uuid UHCP_JumpStrength 5a5e7788-9c44-4af5-a5b7-2107b0bfd4d1
attribute @s minecraft:generic.jump_strength modifier remove 5a5e7788-9c44-4af5-a5b7-2107b0bfd4d1

# Max Absorption
# Currently used by: Redstone Ritual
#alias uuid UHCP_MaxAbsorption 5ae70886-031a-42b7-aa86-783c9536c746
attribute @s minecraft:generic.max_absorption modifier remove 13ede9ff-b146-49ae-8c7b-d7140303926f

# Armor Multiplier
# Currently used by: Hardstuck Iron
#alias uuid UHCP_ArmorMultiplier b386305a-d2c2-4494-bb84-836a1ddebedc
attribute @s minecraft:generic.armor modifier remove b386305a-d2c2-4494-bb84-836a1ddebedc

# Titan Spinal Fluid Attributes
# Many unique attributes for when the player becomes a Titan.
attribute @s minecraft:generic.scale modifier remove 41072b91-1c8b-485e-be92-53b6eeb9660b
attribute @s minecraft:player.entity_interaction_range modifier remove 606e0f11-7483-4e73-828c-b588dd46f162
attribute @s minecraft:generic.knockback_resistance modifier remove fae44ddd-2a29-4fc3-aabe-4b5e288a84b4
attribute @s minecraft:generic.jump_strength modifier remove 049fc60a-5ef5-470e-a8de-24da2f319d48
attribute @s minecraft:generic.step_height modifier remove 1023977d-6dca-477b-a803-4ff0adcb32b1
attribute @s minecraft:generic.fall_damage_multiplier modifier remove e86e3562-bef5-4501-8c52-69a36641913f
