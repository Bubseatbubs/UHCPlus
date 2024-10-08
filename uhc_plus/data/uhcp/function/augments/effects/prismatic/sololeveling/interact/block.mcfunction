# Replace block at head with Nether portal
scoreboard players set @s uhcp_lava_timeInterval 5
tag @s add UHCP_SLLock
execute unless predicate uhcp:dimensions/minecraft/the_nether in uhcp:main run forceload add ~ ~
execute if predicate uhcp:dimensions/minecraft/the_nether in uhcp:hell run forceload add ~ ~
forceload add ~ ~
summon minecraft:marker ~ ~ ~ {Tags:["UHCP_SLBlock","UHCP_SLBNew"]}
summon minecraft:marker ~ ~ ~ {Tags:["UHCP_SLBTP","UHCP_SLBTPNew"]}
rotate @e[tag=UHCP_SLBTPNew,limit=1] ~ ~
execute anchored eyes run function uhcp:augments/effects/prismatic/sololeveling/interact/block/eyes
tag @e[tag=UHCP_SLBTPNew] remove UHCP_SLBTPNew
tag @e[tag=UHCP_SLBNew] remove UHCP_SLBNew
