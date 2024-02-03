# Revert Nether portal to original block
execute as @e[tag=UHCP_SLBlock,scores={uhcp_gameTime=..0}] at @s run function uhcp:augments/effects/prismatic/sololeveling/interact/block/revert
execute as @e[tag=UHCP_SLBlock,scores={uhcp_gameTime=..0}] at @s run function uhcp:augments/effects/prismatic/sololeveling/interact/marker/revert
scoreboard players remove @e[tag=UHCP_SLBlock] uhcp_gameTime 1
execute in uhcp:main run forceload add 0 0
