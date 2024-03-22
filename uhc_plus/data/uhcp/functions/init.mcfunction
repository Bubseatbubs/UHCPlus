# Set initialize scoreboard
scoreboard players set %init uhcp_initStatus 1

# Lobby
function uhcp:lobby/place

# Time
gamerule doDaylightCycle false
time set 6000
