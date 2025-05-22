# Forceload
forceload add 0 0

# Barrel
setblock 0 0 0 minecraft:barrel

# Finish summoning initial player-locking armor stands
execute if score %lock uhcp_itemCount matches 1.. run function uhcp:load/summon
