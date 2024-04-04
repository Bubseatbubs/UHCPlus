# Reset world border
worldborder set 59999968

# Remove forceload
forceload remove all

# Time
gamerule doDaylightCycle false
time set 6000

# Weather
weather clear

# Lobby
function uhcp:lobby/remove
function uhcp:lobby/place
# --------------- Temp coordinates to lobby
spreadplayers 7 7 0 5 under 310 false @a
spawnpoint @a 7 301 7
# ---------------
