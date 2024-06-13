# Revert Nether portal to original block
execute as @e[tag=UHCP_SLBlock,scores={uhcp_game_time=..0}] at @s run function uhcp:augments/effects/prismatic/sololeveling/interact/block/revert

# Ensure (0, 0) is force loaded
execute in uhcp:main run forceload add 0 0
