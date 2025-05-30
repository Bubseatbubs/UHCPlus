# Conversion rate
execute store result storage uhcp:augments CopperColl.gold int 0.125 run scoreboard players get @s uhcp_initStatus
execute store result storage uhcp:augments CopperColl.copper int 8 run data get storage uhcp:augments CopperColl.gold
function uhcp:augments/effects/gold/coppercollector/ingot/convert with storage uhcp:augments CopperColl
tag @s add UHCP_CopperC
