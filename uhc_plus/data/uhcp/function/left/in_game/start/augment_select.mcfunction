#>  uhcp:left/in_game/start/augment_select
#   Runs for a player whom left during augment selection.
#   Runs the effects that would've occurred if the player was in game when augment selection finished.
#
# @within  uhcp:left/in_game/alive

gamemode survival @s
ride @s dismount
execute in uhcp:main run tp @e[tag=UHCP_Lock,predicate=uhcp:dimensions/minecraft] 0 -63 0

effect clear @s
execute if score %time uhcp_game_time matches ..2380 run function uhcp:left/in_game/start/effects
attribute @s minecraft:block_break_speed modifier add uhcp:block_break_speed 1.2 add_multiplied_total
execute if score %night_vision uhcp_settings matches 1 run effect give @s minecraft:night_vision infinite 0 true

# Select augment
function uhcp:augments/autoselect

# Recipes and advancements
function uhcp:start/advancements/reset

# Initialize augment
execute at @s run function uhcp:augments/effects/init

# Give player snow boots if in snowy biome
execute if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots
