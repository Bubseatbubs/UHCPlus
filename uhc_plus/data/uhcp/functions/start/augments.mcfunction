# Augment logic
execute at @s run tp @e[tag=UHCP_Lock,predicate=uhcp:dimensions/uhcp/main,limit=1] ~ ~1 ~
execute at @s run forceload add ~ ~
function uhcp:augments/init
gamemode adventure @s

#sneaky rain piggyback dont mind me
function rain:tags
