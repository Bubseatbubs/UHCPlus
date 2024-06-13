# Access potentially unloaded markers with time left (within one chunk)
execute as @e[tag=UHCP_SLBRevert] run function uhcp:augments/effects/prismatic/sololeveling/interact/block/remove
execute at @s run forceload add ~ ~
