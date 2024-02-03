# Stop Nether portal sound
stopsound @s ambient minecraft:block.portal.trigger
execute at @s run function uhcp:augments/effects/prismatic/sololeveling/interact/stopsound/located
scoreboard players remove @s uhcp_lavaTimeInterval 1
