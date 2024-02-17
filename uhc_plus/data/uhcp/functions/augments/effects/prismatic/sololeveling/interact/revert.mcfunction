# Revert Nether portal to original block
execute if entity @e[tag=UHCP_SLBlock,scores={uhcp_gameTime=..0}] run function uhcp:augments/effects/prismatic/sololeveling/interact/remove
scoreboard players remove @e[tag=UHCP_SLBlock] uhcp_gameTime 1
