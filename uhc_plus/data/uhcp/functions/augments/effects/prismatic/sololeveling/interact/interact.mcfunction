# Close GUI for player
execute store result score %uhcp_SLHeight uhcp_lavaCurrentHeight run data get entity @s Pos[1]

execute if predicate uhcp:dimensions/minecraft/overworld run function uhcp:augments/effects/prismatic/sololeveling/interact/overworld
execute if predicate uhcp:dimensions/minecraft/the_end run function uhcp:augments/effects/prismatic/sololeveling/interact/the_end
execute if predicate uhcp:dimensions/minecraft/the_nether run function uhcp:augments/effects/prismatic/sololeveling/interact/the_nether
