# Stop Nether portal sound
tag @s[scores={uhcp_lavaTimeInterval=..0}] remove UHCP_SLLock
execute at @s run function uhcp:augments/effects/prismatic/sololeveling/interact/stopsound/located
scoreboard players remove @s uhcp_lavaTimeInterval 1
