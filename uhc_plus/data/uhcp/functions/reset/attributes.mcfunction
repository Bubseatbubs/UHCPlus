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