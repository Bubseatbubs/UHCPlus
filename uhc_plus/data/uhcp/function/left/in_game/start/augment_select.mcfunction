#>  uhcp:left/in_game/start/augment_select
#   Runs for a player whom left during augment selection.
#   Runs the effects that would've occurred if the player was in game when augment selection finished.
#
# @within  uhcp:left/in_game/alive

gamemode survival @s
ride @s dismount
execute at @s as @e[tag=UHCP_Lock,distance=..100] in uhcp:main run tp @s 0 -63 0

effect clear @s
execute if score %time uhcp_game_time matches ..2380 run function uhcp:left/in_game/start/effects
attribute @s minecraft:player.block_break_speed modifier add uhcp:block_break_speed 1.2 add_multiplied_total
execute if score %night_vision uhcp_settings matches 1 run effect give @s minecraft:night_vision infinite 0 true

# Initialize augment
function uhcp:augments/autoselect
execute at @s run function uhcp:augments/effects/init

# Give player Snow Boots if in Snowy Biome
execute if biome ~ ~-1 ~ #uhcp:snowy run loot replace entity @s armor.feet loot uhcp:snow_boots
