# Reset world border
worldborder set 59999968

# Remove forceload
forceload remove all

# Gamerules
gamerule doDaylightCycle false
gamerule doMobSpawning false

# Time
time set 13000

# Weather
weather clear

# Lobby
function uhcp:lobby/place
spreadplayers 30.0 31 0 1.5 under 299 false @a
spawnpoint @a 30 296 32
