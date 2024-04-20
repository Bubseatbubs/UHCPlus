#>  uhcp:left/in_game/augments/select
#   Runs for a player whom left during augment selection.
#   Runs the effects that would've occurred if the player was in game when augment selection finished.
#
# @within  uhcp:left/in_game/alive

gamemode survival @s
ride @s dismount
execute at @s as @e[tag=UHCP_Lock,distance=..100] in uhcp:main run tp @s 0 -63 0

effect clear @s
effect give @s minecraft:speed 15 0 false
effect give @s minecraft:resistance 120 4 false
attribute @s minecraft:player.block_break_speed modifier add 4329681b-2b41-4dc1-8b3a-4a5ebae3c1ce "" 1.2 add_multiplied_total
effect give @s minecraft:night_vision infinite 0 true

# Initialize augment
function uhcp:augments/autoselect
execute at @s run function uhcp:augments/effects/init

# Give player Snow Boots if in Snowy Biome
execute if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots
