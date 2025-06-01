# Remove existing modifiers to prevent stacking
attribute @s minecraft:attack_speed modifier remove ssiege:rune_aspeed
attribute @s minecraft:movement_speed modifier remove ssiege:rune_mspeed

# Calculates values and stores into temp:ssiege
execute store result storage temp:ssiege attackspeed_value double .16 run scoreboard players get @s ssiege_rune_swiftness
execute store result storage temp:ssiege movespeed_value double .04 run scoreboard players get @s ssiege_rune_swiftness

# Apply the attribute modifier using macro
function ssiege:shop/runes/effects/swiftness_macro with storage temp:ssiege