# Reset world border
worldborder set 59999968

# Gamerules
gamerule doDaylightCycle false
gamerule doImmediateRespawn true
gamerule doMobLoot true
gamerule keepInventory true
gamerule randomTickSpeed 0
gamerule showDeathMessages true

# Time
time set 13000

# Weather
weather clear

# Lobby
forceload add -80 -80 79 79
execute as @e[tag=UHCP_Lobby] run function uhcp:entity/instant_kill
function uhcp:lobby/place
execute at @e[tag=UHCP_LobbyOrigin,limit=1] align y run function uhcp:reset/dimensions/minecraft/overworld/players
forceload remove all
