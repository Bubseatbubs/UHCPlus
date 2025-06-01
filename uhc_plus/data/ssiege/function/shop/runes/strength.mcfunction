# Remove existing modifier to prevent stacking
attribute @s minecraft:attack_damage modifier remove ssiege:rune_strength

# Calculate 0.32 * ssiege_rune_strength and store as double
execute store result storage temp:ssiege modifier_value double 0.32 run scoreboard players get @s ssiege_rune_strength

# Apply the attribute modifier using macro
function ssiege:shop/runes/applystrength with storage temp:ssiege