# Nether portal method
execute if score %uhcp_SLHeight uhcp_lavaCurrentHeight matches ..254 at @s run function uhcp:augments/effects/prismatic/sololeveling/interact/block

# Teleportation method
execute if score %uhcp_SLHeight uhcp_lavaCurrentHeight matches 255.. at @s run function uhcp:augments/effects/prismatic/sololeveling/interact/teleport
