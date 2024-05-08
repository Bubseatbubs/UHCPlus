# Initialize augment selection
execute at @s run tp @e[tag=UHCP_Lock,predicate=uhcp:dimensions/uhcp/main,limit=1] ~ ~1 ~
execute at @s run forceload add ~ ~
function uhcp:augments/init
