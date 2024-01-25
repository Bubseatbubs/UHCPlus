# Augment logic
execute at @s run tp @e[tag=UHCP_Lock,predicate=uhcp:dimensions/uhcp/main,limit=1] ~ ~1 ~
execute at @s run forceload add ~ ~
effect give @s resistance 45 4 true
effect give @s mining_fatigue 45 255 true
effect give @s weakness 45 4 true
function uhcp:augments/optionselect
gamemode adventure
