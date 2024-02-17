# Clone block back
execute unless predicate uhcp:dimensions/minecraft/the_nether run function uhcp:augments/effects/prismatic/sololeveling/interact/block/normal
execute if predicate uhcp:dimensions/minecraft/the_nether run function uhcp:augments/effects/prismatic/sololeveling/interact/block/the_nether

# Remove forceloads and kill markers
forceload remove ~ ~
execute unless predicate uhcp:dimensions/minecraft/the_nether in uhcp:main run forceload remove ~ ~
execute if predicate uhcp:dimensions/minecraft/the_nether in uhcp:hell run forceload remove ~ ~
kill @e[tag=UHCP_SLBTP,distance=..2,sort=nearest,limit=1]
kill @s
