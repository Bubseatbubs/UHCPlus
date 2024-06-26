# Tag marker
forceload add ~ ~
tag @s add UHCP_SLBRevert

# Clone block back
execute unless predicate uhcp:dimensions/minecraft/the_nether run function uhcp:augments/effects/prismatic/sololeveling/interact/block/normal
execute if predicate uhcp:dimensions/minecraft/the_nether run function uhcp:augments/effects/prismatic/sololeveling/interact/block/the_nether

# Remove forceloads and kill markers
execute as @e[tag=UHCP_SLBlock,scores={uhcp_game_time=1..},distance=..385] run function uhcp:augments/effects/prismatic/sololeveling/interact/block/restore
execute unless predicate uhcp:dimensions/minecraft/the_nether in uhcp:main run forceload remove ~ ~
execute if predicate uhcp:dimensions/minecraft/the_nether in uhcp:hell run forceload remove ~ ~
execute as @n[tag=UHCP_SLBTP,distance=..2] run function uhcp:augments/effects/prismatic/sololeveling/interact/block/unlock
kill @s
