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
forceload add -96 -96 95 95
execute as @e[tag=UHCP_Lobby] run function uhcp:entity/instant_kill
function uhcp:lobby/place
execute at @e[tag=UHCP_LobbyOrigin,limit=1] align y run function uhcp:reset/game/overworld/players
forceload remove -96 -96 95 95
