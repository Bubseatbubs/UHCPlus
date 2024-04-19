# Forceload
forceload add 0 0

# Barrel
setblock 0 0 0 minecraft:barrel

# Fill barrier blocks
fill 6 -11 6 10 -10 10 minecraft:barrier
fill 7 -10 7 9 -10 9 minecraft:air

# Finish summoning initial player-locking armor stands
execute if score %lock uhcp_itemCount matches 1.. run function uhcp:load/summon
