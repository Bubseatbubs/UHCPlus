# Version of relic that runs in lobby
execute store result score @s uhcp_initStatus run data get entity @s Pos[1]
execute unless score @s uhcp_initStatus matches 273..282 run return fail

# Summon Mirages
execute positioned ~-1 ~ ~ run function uhcp:relics/smooth_getaway/lobby/summon
execute positioned ~1 ~ ~ run function uhcp:relics/smooth_getaway/lobby/summon

# Player effects
effect give @s minecraft:invisibility 10 1 true
effect give @s minecraft:resistance 3 5 true

# Effects
particle minecraft:campfire_signal_smoke ~ ~ ~ 2 0.5 2 0.1 100 normal
particle minecraft:flash ~ ~ ~ 1 0.5 1 0.1 10 normal
playsound minecraft:entity.zombie.converted_to_drowned master @a[distance=..8] ~ ~ ~ 1 0.5 0.5

# End
tag @s add UHCP_SmoothGetaway
