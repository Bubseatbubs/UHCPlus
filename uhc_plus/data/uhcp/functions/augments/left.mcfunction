#>  uhcp:augments/left
#   Runs for a player who left during augment selection
#   Runs the effects that would've occurred if the player was in game when augment selection finished
#
# @within  uhcp:tick

gamemode survival @s
bossbar set minecraft:uhcp_augment players
ride @s dismount
execute at @s as @e[tag=UHCP_Lock,distance=..100] in uhcp:main run tp @s 0 -63 0

effect clear @s
effect give @s minecraft:speed 15 0 false
effect give @s minecraft:resistance 120 4 false
effect give @s minecraft:haste infinite 0 true

# Initialize augment
scoreboard players set @s uhcp_a_leave 1
function uhcp:augments/autoselect
execute at @s run function uhcp:augments/effects/init

# Boots Effect (from UHC Pack)
execute at @s run function uhcp:augments/left/boots

# Finish
execute at @s run forceload remove ~ ~
scoreboard players reset @s uhcp_a_leave
