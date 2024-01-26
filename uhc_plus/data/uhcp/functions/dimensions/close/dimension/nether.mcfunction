# Kick player out of Nether
tag @s add UHCP_DimKick
execute as @e[tag=UHCP_DimWork] run function uhcp:dimensions/close/dimension/nether/marker
execute at @s run forceload remove ~-5 ~-5 ~5 ~5
tellraw @s {"text":"You have been moved to the overworld.","color":"red"}
tag @s remove UHCP_DimKick
