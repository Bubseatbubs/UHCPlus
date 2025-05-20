# Kick players out of End and Nether
tag @a remove UHCP_DimKick
execute as @a[predicate=uhcp:dimensions/minecraft/the_end,gamemode=survival] run function uhcp:dimensions/close/dimension/end
execute as @a[predicate=uhcp:dimensions/minecraft/the_nether,gamemode=survival] run function uhcp:dimensions/close/dimension/nether
