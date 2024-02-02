# Replace block at head with Nether portal
execute in uhcp:main run forceload add ~ ~
forceload add ~ ~
summon minecraft:marker ~ ~ ~ {Tags:["UHCP_SLBlock","UHCP_SLBNew"]}
execute anchored eyes run function uhcp:augments/effects/prismatic/sololeveling/interact/block/eyes
tag @e[tag=UHCP_SLBNew] remove UHCP_SLBNew
