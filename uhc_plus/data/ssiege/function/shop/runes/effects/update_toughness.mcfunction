# Remove existing modifiers to prevent stacking
attribute @s minecraft:armor modifier remove ssiege:rune_armor
attribute @s minecraft:armor_toughness modifier remove ssiege:rune_armor_toughness

# Calculates values and stores into ssiege:temp
execute store result storage ssiege:temp armor_value double .134 run scoreboard players get @s ssiege_rune_toughness
execute store result storage ssiege:temp armor_toughness_value double 1.2 run scoreboard players get @s ssiege_rune_toughness

# Apply the attribute modifier using macro
function ssiege:shop/runes/effects/toughness_macro with storage ssiege:temp shop