# Reset player's attribute modifiers
# Also serves as a list of modifiers that may be reused for different use cases

# Max health
# Currently used by: Large and in Charge, Surface Duty, Zombie, Empty Hearted
#alias uuid UHCP_MaxHealth bcae8a4d-80b1-4a6b-9eaf-e9efa3044754
attribute @s minecraft:generic.max_health modifier remove bcae8a4d-80b1-4a6b-9eaf-e9efa3044754

# Block Breaking Speed
# Given to all players at the start of the game
#alias uuid UHCP_BlockBreakSpeed 4329681b-2b41-4dc1-8b3a-4a5ebae3c1ce
attribute @s minecraft:player.block_break_speed modifier remove 4329681b-2b41-4dc1-8b3a-4a5ebae3c1ce