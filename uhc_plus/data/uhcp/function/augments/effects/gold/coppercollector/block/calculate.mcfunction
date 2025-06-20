# Conversion rate
execute store result storage uhcp:augments CopperColl.gold int 1.125 run scoreboard players get @s uhcp_initStatus
execute store result storage uhcp:augments CopperColl.copper int 0.1111111111111112 run scoreboard players get @s uhcp_initStatus
function uhcp:augments/effects/gold/coppercollector/block/convert with storage uhcp:augments CopperColl
tag @s add UHCP_CopperC
